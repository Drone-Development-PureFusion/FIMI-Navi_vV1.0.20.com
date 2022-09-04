.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;
.super Ljava/lang/Object;
.source "X8MediaFileLoad.java"

# interfaces
.implements Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    .prologue
    .line 71
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownFilePre(Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;)V
    .locals 1
    .param p1, "fileInfo"    # Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;

    .prologue
    .line 114
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->access$300(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)V

    .line 115
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-static {v0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->access$400(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;)V

    .line 116
    return-void
.end method

.method public onEndFile(Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;)V
    .locals 4
    .param p1, "resultEnum"    # Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;"
    const-wide/16 v2, 0x1f4

    .line 120
    sget-object v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$3;->$SwitchMap$com$fimi$app$x8s$ui$album$x8s$DownFileResultEnum:[I

    invoke-virtual {p1}, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->access$500(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->access$600(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)V

    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->parseOnlineData()V

    .line 129
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/NoticeManager;->removeMediaListener(Lcom/fimi/kernel/connect/session/MediaDataListener;)V

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->access$500(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onProgress(Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;)V
    .locals 6
    .param p1, "downLoadPacket"    # Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;

    .prologue
    .line 79
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;"
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    iget-object v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->fileLength:J

    .line 84
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    iget-wide v2, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->fileLength:J

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getOffSet()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    iget-object v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->randomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    iget-wide v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->fileLength:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 86
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    iget-object v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getPlayData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 87
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Success:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->onEndFile(Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Fail:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->onEndFile(Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    iget-boolean v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->isAwait:Z

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->isAwait:Z

    .line 94
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInMainThread()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onSartFile()V
    .locals 3

    .prologue
    .line 74
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    new-instance v1, Lcom/fimi/x8sdk/command/X8DownLoadCmd;

    invoke-direct {v1}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;-><init>()V

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->getMediaXmlFile(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    .line 75
    return-void
.end method
