.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1$1;
.super Ljava/lang/Object;
.source "X8MediaOriginalDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->mediaDataCallBack([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;

.field final synthetic val$downLoadPacket:Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;

    iput-object p2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1$1;->val$downLoadPacket:Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 149
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  ==================mediaDataCallBack finished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "downLoadPacket.getOffSet():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1$1;->val$downLoadPacket:Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getOffSet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    new-instance v1, Lcom/fimi/x8sdk/command/X8DownLoadCmd;

    invoke-direct {v1}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;-><init>()V

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;

    iget-object v2, v2, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0x400

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;

    iget-object v4, v4, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-static {v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getDownLoadOriginalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->downMediaFile(ISLjava/lang/String;Z)Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->access$500(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    iput-boolean v5, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->isAwait:Z

    .line 152
    return-void
.end method
