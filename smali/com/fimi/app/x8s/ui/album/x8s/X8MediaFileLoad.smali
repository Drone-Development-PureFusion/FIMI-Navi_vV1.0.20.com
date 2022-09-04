.class public Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;
.super Ljava/lang/Object;
.source "X8MediaFileLoad.java"

# interfaces
.implements Lcom/fimi/album/download/interfaces/IMediaFileLoad;
.implements Lcom/fimi/kernel/connect/session/MediaDataListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/download/interfaces/IMediaFileLoad;",
        "Lcom/fimi/kernel/connect/session/MediaDataListener;"
    }
.end annotation


# instance fields
.field private X8_MEDIA_DES:Ljava/lang/String;

.field downingFileInfo:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;

.field fileLength:J

.field fileLinstener:Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;

.field info:Lcom/fimi/app/x8s/ui/album/x8s/X8FileInfo;

.field isAwait:Z

.field private isErr:Z

.field private listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;

.field private mHandler:Landroid/os/Handler;

.field public mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

.field private max_size:S

.field public final orginPath:Ljava/lang/String;

.field randomAccessFile:Ljava/io/RandomAccessFile;

.field rootFile:Ljava/io/File;

.field private rootPath:Ljava/lang/String;

.field public final tempPath:Ljava/lang/String;

.field thumInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/ui/album/x8s/VideoThumInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final thumPath:Ljava/lang/String;

.field public final xmlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;Ljava/util/List;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    .local p2, "listData":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/album/entity/MediaModel;>;"
    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->thumInfos:Ljava/util/List;

    .line 55
    const-string v0, "media.xml"

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->X8_MEDIA_DES:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/x8/media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->rootPath:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->X8_MEDIA_DES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->xmlPath:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->xmlPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->rootFile:Ljava/io/File;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/thum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->thumPath:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/orgin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->orginPath:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->tempPath:Ljava/lang/String;

    .line 62
    const/16 v0, 0x400

    iput-short v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->max_size:S

    .line 63
    invoke-static {}, Lcom/fimi/album/biz/SuffixUtils;->obtain()Lcom/fimi/album/biz/SuffixUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    .line 65
    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->isErr:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->fileLength:J

    .line 70
    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->isAwait:Z

    .line 71
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->fileLinstener:Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;

    .line 137
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$2;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mHandler:Landroid/os/Handler;

    .line 158
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->listener:Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;

    .line 159
    iput-object p2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->listData:Ljava/util/List;

    .line 160
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8FileInfo;

    invoke-direct {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8FileInfo;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->info:Lcom/fimi/app/x8s/ui/album/x8s/X8FileInfo;

    .line 161
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/connect/session/NoticeManager;->addMediaListener(Lcom/fimi/kernel/connect/session/MediaDataListener;)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->X8_MEDIA_DES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;Lcom/fimi/x8sdk/command/X8MediaCmd;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;
    .param p1, "x1"    # Lcom/fimi/x8sdk/command/X8MediaCmd;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;J)V
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;
    .param p1, "x1"    # J

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->reqNextPacket(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->createRootFile()V

    return-void
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;
    .param p1, "x1"    # Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->startDownloadTask(Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->closeWriteStream()V

    return-void
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;)Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->listener:Lcom/fimi/app/x8s/ui/album/x8s/OnX8MediaFileListener;

    return-object v0
.end method

.method private closeWriteStream()V
    .locals 2

    .prologue
    .line 373
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private createRootFile()V
    .locals 5

    .prologue
    .line 206
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->rootPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "rootDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->rootFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->rootFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 214
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->rootFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->rootFile:Ljava/io/File;

    const-string v4, "rwd"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->randomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :goto_1
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private reqNextPacket(J)V
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 233
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->downingFileInfo:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->getFileSize()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->downingFileInfo:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->getFileSize()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    iget-short v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->max_size:S

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-short v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->max_size:S

    :goto_1
    iput-short v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->max_size:S

    .line 235
    new-instance v0, Lcom/fimi/x8sdk/command/X8DownLoadCmd;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;-><init>()V

    long-to-int v1, p1

    iget-short v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->max_size:S

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->X8_MEDIA_DES:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->downMediaFile(ISLjava/lang/String;Z)Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->downingFileInfo:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->getFileSize()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    int-to-short v0, v0

    goto :goto_1
.end method

.method private sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/x8sdk/command/X8MediaCmd;

    .prologue
    .line 170
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/session/SessionManager;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0
.end method

.method private startDownloadTask(Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;)V
    .locals 4
    .param p1, "x8MediaFileInfo"    # Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    const/4 v3, 0x0

    .line 227
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->downingFileInfo:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;

    .line 228
    new-instance v0, Lcom/fimi/x8sdk/command/X8DownLoadCmd;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;-><init>()V

    const/16 v1, 0x400

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->downMediaFile(ISLjava/lang/String;Z)Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    .line 229
    return-void
.end method


# virtual methods
.method public isExits(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 351
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    const/4 v1, 0x0

    .line 352
    .local v1, "ret":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const/4 v1, 0x1

    .line 356
    :cond_0
    return v1
.end method

.method public isExits(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    .line 361
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    const/4 v1, 0x0

    .line 362
    .local v1, "ret":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 366
    const/4 v1, 0x1

    .line 369
    :cond_0
    return v1
.end method

.method public mediaDataCallBack([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 183
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 184
    const/4 v3, 0x0

    aget-byte v0, p1, v3

    .line 185
    .local v0, "cmdType":B
    if-nez v0, :cond_1

    .line 186
    new-instance v2, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;

    invoke-direct {v2}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;-><init>()V

    .line 187
    .local v2, "x8MediaFileInfo":Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;
    invoke-virtual {v2, p1}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->unPacket([B)V

    .line 188
    sget-object v3, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;->RootFile:Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;->setMediaFileType(Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo$MediaFileType;)V

    .line 189
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->fileLinstener:Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;

    invoke-interface {v3, v2}, Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;->onDownFilePre(Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;)V

    .line 199
    .end local v0    # "cmdType":B
    .end local v2    # "x8MediaFileInfo":Lcom/fimi/x8sdk/dataparser/X8MediaFileInfo;
    :cond_0
    :goto_0
    return-void

    .line 190
    .restart local v0    # "cmdType":B
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 191
    new-instance v1, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;

    invoke-direct {v1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;-><init>()V

    .line 192
    .local v1, "downLoadPacket":Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->unPacket([B)V

    .line 193
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->X8_MEDIA_DES:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->fileLinstener:Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;

    invoke-interface {v3, v1}, Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;->onProgress(Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;)V

    goto :goto_0
.end method

.method public parseOnlineData()V
    .locals 32

    .prologue
    .line 243
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->thumPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v22, "thumDir":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_0

    .line 245
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdir()Z

    .line 247
    :cond_0
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->orginPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v20, "orignDir":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_1

    .line 249
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    .line 252
    :cond_1
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->tempPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v21, "tempDir":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_2

    .line 255
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    .line 257
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->thumInfos:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    .line 259
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->xmlPath:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v26, "xmlFile":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 261
    const/4 v6, 0x0

    .line 262
    .local v6, "bufr":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 264
    .local v18, "line":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->listData:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    .line 265
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v27, Ljava/io/FileReader;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    .end local v6    # "bufr":Ljava/io/BufferedReader;
    .local v7, "bufr":Ljava/io/BufferedReader;
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 267
    const-string v27, "\\|"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 268
    .local v17, "infoArray":[Ljava/lang/String;
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 269
    new-instance v19, Lcom/fimi/album/entity/MediaModel;

    invoke-direct/range {v19 .. v19}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 270
    .local v19, "model":Lcom/fimi/album/entity/MediaModel;
    const/16 v27, 0x0

    aget-object v13, v17, v27

    .line 271
    .local v13, "fileSize":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/fimi/album/entity/MediaModel;->setFileSize(J)V

    .line 272
    const/16 v27, 0x1

    aget-object v8, v17, v27

    .line 273
    .local v8, "dataString":Ljava/lang/String;
    const/16 v27, 0x2

    aget-object v12, v17, v27

    .line 274
    .local v12, "fileName":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/fimi/album/entity/MediaModel;->setName(Ljava/lang/String;)V

    .line 275
    const/16 v27, 0x3

    aget-object v25, v17, v27

    .line 276
    .local v25, "url":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setFileUrl(Ljava/lang/String;)V

    .line 277
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v27, "yyyy-MMM-dd_HH:mm:ss"

    sget-object v28, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v10, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 278
    .local v10, "dtf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v10, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 279
    .local v9, "date":Ljava/util/Date;
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string/jumbo v27, "yyyy.MM.dd HH:mm:ss"

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 280
    .local v15, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v15, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 281
    .local v16, "formatDate":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/fimi/album/entity/MediaModel;->setCreateDate(J)V

    .line 283
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setMd5(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->orginPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setLocalFileDir(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lcom/fimi/album/biz/SuffixUtils;->judgeVideo(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 286
    const/16 v27, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 287
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 289
    .local v14, "fileURL":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatThm:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatJpg:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 290
    .local v23, "thumName":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 291
    .local v24, "thumURL":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/fimi/album/entity/MediaModel;->setFileUrl(Ljava/lang/String;)V

    .line 292
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatThm:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatRlv:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumFileUrl(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumName(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/fimi/album/entity/MediaModel;->setDownLoadOriginalPath(Ljava/lang/String;)V

    .line 295
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->thumPath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumLocalFilePath(Ljava/lang/String;)V

    .line 296
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->orginPath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->orginPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->isExits(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownLoadOriginalFile(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->thumPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatThm:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatJpg:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-wide/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->isExits(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v27

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownLoadThum(Z)V

    .line 315
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->listData:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->listData:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 318
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->listData:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 327
    .end local v8    # "dataString":Ljava/lang/String;
    .end local v9    # "date":Ljava/util/Date;
    .end local v10    # "dtf":Ljava/text/SimpleDateFormat;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "fileSize":Ljava/lang/String;
    .end local v14    # "fileURL":Ljava/lang/String;
    .end local v15    # "format":Ljava/text/SimpleDateFormat;
    .end local v16    # "formatDate":Ljava/lang/String;
    .end local v17    # "infoArray":[Ljava/lang/String;
    .end local v19    # "model":Lcom/fimi/album/entity/MediaModel;
    .end local v23    # "thumName":Ljava/lang/String;
    .end local v24    # "thumURL":Ljava/lang/String;
    .end local v25    # "url":Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v6, v7

    .line 329
    .end local v7    # "bufr":Ljava/io/BufferedReader;
    .restart local v6    # "bufr":Ljava/io/BufferedReader;
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    if-eqz v6, :cond_5

    .line 334
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 341
    .end local v6    # "bufr":Ljava/io/BufferedReader;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v18    # "line":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 299
    .restart local v7    # "bufr":Ljava/io/BufferedReader;
    .restart local v8    # "dataString":Ljava/lang/String;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v10    # "dtf":Ljava/text/SimpleDateFormat;
    .restart local v12    # "fileName":Ljava/lang/String;
    .restart local v13    # "fileSize":Ljava/lang/String;
    .restart local v15    # "format":Ljava/text/SimpleDateFormat;
    .restart local v16    # "formatDate":Ljava/lang/String;
    .restart local v17    # "infoArray":[Ljava/lang/String;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v19    # "model":Lcom/fimi/album/entity/MediaModel;
    .restart local v25    # "url":Ljava/lang/String;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lcom/fimi/album/biz/SuffixUtils;->judgePhotho(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 300
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 301
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 302
    .restart local v14    # "fileURL":Ljava/lang/String;
    move-object/from16 v23, v12

    .line 303
    .restart local v23    # "thumName":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 304
    .restart local v24    # "thumURL":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/fimi/album/entity/MediaModel;->setFileUrl(Ljava/lang/String;)V

    .line 305
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatJpg:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/fimi/album/biz/SuffixUtils;->fileFormatRlv:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumFileUrl(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumName(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/fimi/album/entity/MediaModel;->setDownLoadOriginalPath(Ljava/lang/String;)V

    .line 308
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->thumPath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumLocalFilePath(Ljava/lang/String;)V

    .line 309
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->orginPath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->orginPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->isExits(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownLoadOriginalFile(Z)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->thumPath:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v12, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->isExits(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v27

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownLoadThum(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 332
    .end local v8    # "dataString":Ljava/lang/String;
    .end local v9    # "date":Ljava/util/Date;
    .end local v10    # "dtf":Ljava/text/SimpleDateFormat;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "fileSize":Ljava/lang/String;
    .end local v14    # "fileURL":Ljava/lang/String;
    .end local v15    # "format":Ljava/text/SimpleDateFormat;
    .end local v16    # "formatDate":Ljava/lang/String;
    .end local v17    # "infoArray":[Ljava/lang/String;
    .end local v19    # "model":Lcom/fimi/album/entity/MediaModel;
    .end local v23    # "thumName":Ljava/lang/String;
    .end local v24    # "thumURL":Ljava/lang/String;
    .end local v25    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v27

    move-object v6, v7

    .line 333
    .end local v7    # "bufr":Ljava/io/BufferedReader;
    .restart local v6    # "bufr":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v6, :cond_7

    .line 334
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 339
    :cond_7
    :goto_5
    throw v27

    .line 333
    .end local v6    # "bufr":Ljava/io/BufferedReader;
    .restart local v7    # "bufr":Ljava/io/BufferedReader;
    :cond_8
    if-eqz v7, :cond_5

    .line 334
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 335
    :catch_1
    move-exception v11

    .line 336
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 335
    .end local v7    # "bufr":Ljava/io/BufferedReader;
    .restart local v6    # "bufr":Ljava/io/BufferedReader;
    .local v11, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 336
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 335
    .end local v11    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v11

    .line 336
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 332
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v27

    goto :goto_4

    .line 327
    :catch_4
    move-exception v11

    goto/16 :goto_2
.end method

.method public startLoad()V
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->fileLinstener:Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;->onSartFile()V

    .line 167
    return-void
.end method

.method public stopLoad()V
    .locals 2

    .prologue
    .line 177
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->info:Lcom/fimi/app/x8s/ui/album/x8s/X8FileInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8FileInfo;->setStop(Z)V

    .line 178
    return-void
.end method
