.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;
.super Ljava/lang/Object;
.source "X8MediaOriginalDownloadTask.java"

# interfaces
.implements Lcom/fimi/kernel/connect/session/MediaDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mediaDataCallBack([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 97
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 98
    aget-byte v6, p1, v11

    .line 105
    .local v6, "cmdType":B
    if-ne v6, v10, :cond_0

    .line 106
    new-instance v7, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;

    invoke-direct {v7}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;-><init>()V

    .line 107
    .local v7, "downLoadPacket":Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;
    invoke-virtual {v7, p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->unPacket([B)V

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getDownLoadOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)J

    move-result-wide v0

    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getOffSet()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onProgress(Ljava/lang/Object;JJ)V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getPlayloadSize()S

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$102(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;J)J

    .line 115
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getPlayData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    const-string v0, "felix"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5df2\u7ecf\u4e0b\u8f7d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getOffSet()I

    move-result v0

    invoke-virtual {v7}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getPlayloadSize()S

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    move v9, v10

    .line 121
    .local v9, "isComplete":Z
    :goto_1
    if-eqz v9, :cond_2

    .line 122
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    const-string v1, "Alanqiu  ==================mediaDataCallBack:\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$300(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;Lcom/fimi/album/entity/MediaModel;)Z

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/fimi/album/entity/MediaModel;->setDownloadFinish(Z)V

    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/fimi/album/entity/MediaModel;->setDownLoadOriginalFile(Z)V

    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onSuccess(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->removeMediaListener()V

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$400(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)V

    .line 165
    .end local v6    # "cmdType":B
    .end local v7    # "downLoadPacket":Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;
    .end local v9    # "isComplete":Z
    :cond_0
    :goto_2
    return-void

    .line 116
    .restart local v6    # "cmdType":B
    .restart local v7    # "downLoadPacket":Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;
    :catch_0
    move-exception v8

    .line 117
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move v9, v11

    .line 120
    goto :goto_1

    .line 132
    .restart local v9    # "isComplete":Z
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isStop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    const-string v1, "Alanqiu  ==================mediaDataCallBack:\u4e0b\u8f7dstop"

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onStop(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_2

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 140
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/fimi/album/entity/MediaModel;->setDownloadFail(Z)V

    goto :goto_2

    .line 144
    .end local v9    # "isComplete":Z
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    iget-boolean v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->isAwait:Z

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    iput-boolean v10, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->isAwait:Z

    .line 146
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInMainThread()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1$1;

    invoke-direct {v1, p0, v7}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
