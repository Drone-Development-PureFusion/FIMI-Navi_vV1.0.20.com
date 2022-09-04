.class public Lcom/fimi/album/biz/Gh2FolderDispater;
.super Ljava/lang/Object;
.source "Gh2FolderDispater.java"

# interfaces
.implements Lcom/fimi/album/iview/IHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/iview/IHandlerCallback;"
    }
.end annotation


# static fields
.field public static final PHOTO:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field public static final VIDEO:I = 0x1


# instance fields
.field private dataHash:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private defaultFormatPattern:Ljava/lang/String;

.field public isHadForEachFolder:Z

.field private localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private localDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

.field private mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

.field private otherHandler:Landroid/os/Handler;

.field private photoCount:J

.field private videoCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/fimi/album/biz/Gh2FolderDispater;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/album/biz/Gh2FolderDispater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    const-wide/16 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/fimi/album/biz/SuffixUtils;->obtain()Lcom/fimi/album/biz/SuffixUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    .line 53
    const-string/jumbo v0, "yyyy.MM.dd HH:mm:ss"

    iput-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->defaultFormatPattern:Ljava/lang/String;

    .line 57
    iput-wide v2, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->videoCount:J

    .line 59
    iput-wide v2, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->photoCount:J

    .line 62
    invoke-static {}, Lcom/fimi/album/handler/HandlerManager;->obtain()Lcom/fimi/album/handler/HandlerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/album/handler/HandlerManager;->getHandlerInOtherThread(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->otherHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->localDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->dataHash:Ljava/util/LinkedHashMap;

    .line 66
    return-void
.end method

.method private addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    .local p1, "cacheList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "saveList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    .local p3, "saveHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;>;"
    const/4 v10, 0x1

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "cacheFormateDate":Ljava/lang/String;
    const/4 v6, 0x0

    .line 170
    .local v6, "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    const/4 v3, 0x0

    .line 171
    .local v3, "isOneTime":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 172
    new-instance v2, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v2}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 173
    .local v2, "headViewModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v2, v10}, Lcom/fimi/album/entity/MediaModel;->setHeadView(Z)V

    .line 174
    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v2    # "headViewModel":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/album/entity/MediaModel;

    .line 177
    .local v5, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getFormatDate()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v4, v8, v9

    .line 178
    .local v4, "lastModifyDate":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 179
    :cond_1
    if-eqz v6, :cond_2

    .line 180
    invoke-virtual {p3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    const/4 v3, 0x0

    .line 184
    :cond_2
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v6    # "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 185
    .restart local v6    # "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TT;>;"
    new-instance v1, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v1}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 186
    .local v1, "headModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1, v4}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1, v10}, Lcom/fimi/album/entity/MediaModel;->setCategory(Z)V

    .line 188
    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    move-object v0, v4

    .line 190
    if-nez v3, :cond_3

    .line 191
    const/4 v3, 0x1

    .line 194
    .end local v1    # "headModel":Lcom/fimi/album/entity/MediaModel;
    :cond_3
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    .end local v4    # "lastModifyDate":Ljava/lang/String;
    .end local v5    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_4
    if-eqz v3, :cond_5

    .line 198
    if-eqz v6, :cond_5

    .line 199
    invoke-virtual {p3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_5
    return-void
.end method


# virtual methods
.method public forEachFolder(Ljava/lang/String;)V
    .locals 3
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    const/4 v2, 0x3

    .line 69
    iget-boolean v1, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->isHadForEachFolder:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->otherHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 71
    .local v0, "mMessage":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 72
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->otherHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    .end local v0    # "mMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getDataHash()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->dataHash:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getLocalDataList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getLocalDataNoHeadList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->localDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getPhotoCount()J
    .locals 2

    .prologue
    .line 248
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    iget-wide v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->photoCount:J

    return-wide v0
.end method

.method public getVideoCount()J
    .locals 2

    .prologue
    .line 240
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    iget-wide v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->videoCount:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 79
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fimi/album/biz/Gh2FolderDispater;->reallyHandlerFolderFile(Ljava/lang/String;)V

    .line 82
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isHadForEachFolder()Z
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->isHadForEachFolder:Z

    return v0
.end method

.method public reDefaultList()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    const-wide/16 v0, 0x0

    .line 207
    iput-wide v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->videoCount:J

    .line 208
    iput-wide v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->photoCount:J

    .line 209
    iget-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 210
    iget-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->localDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 211
    iget-object v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->dataHash:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->isHadForEachFolder:Z

    .line 213
    return-void
.end method

.method public reallyHandlerFolderFile(Ljava/lang/String;)V
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 86
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "cacheList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, "floder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 89
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 90
    .local v5, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 91
    .local v3, "files":[Ljava/io/File;
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->videoCount:J

    .line 92
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->photoCount:J

    .line 93
    array-length v9, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v1, v3, v8

    .line 94
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 95
    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "filePath":Ljava/lang/String;
    new-instance v6, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v6}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 99
    .local v6, "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/fimi/album/entity/MediaModel;->setFileSize(J)V

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/fimi/album/entity/MediaModel;->setCreateDate(J)V

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iget-object v12, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->defaultFormatPattern:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/fimi/kernel/utils/DateFormater;->dateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/fimi/album/entity/MediaModel;->setName(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v6, v2}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 104
    const-string v10, "."

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 106
    iget-object v10, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    invoke-virtual {v10, v2}, Lcom/fimi/album/biz/SuffixUtils;->judgeFileType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 107
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 108
    iget-wide v10, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->videoCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->videoCount:J

    .line 113
    :goto_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 111
    iget-wide v10, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->photoCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->photoCount:J

    goto :goto_2

    .line 118
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v6    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_3
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 119
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 120
    .local v7, "temp_file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 121
    array-length v9, v3

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_3

    aget-object v1, v3, v8

    .line 122
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 123
    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 125
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 126
    .restart local v2    # "filePath":Ljava/lang/String;
    new-instance v6, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v6}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 127
    .restart local v6    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/fimi/album/entity/MediaModel;->setFileSize(J)V

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/fimi/album/entity/MediaModel;->setCreateDate(J)V

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iget-object v12, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->defaultFormatPattern:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/fimi/kernel/utils/DateFormater;->dateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/fimi/album/entity/MediaModel;->setName(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6, v2}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 133
    iget-object v10, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->mSuffixUtils:Lcom/fimi/album/biz/SuffixUtils;

    invoke-virtual {v10, v2}, Lcom/fimi/album/biz/SuffixUtils;->judgeFileType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 134
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 138
    :goto_5
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 136
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    goto :goto_5

    .line 143
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v6    # "mMediaModel":Lcom/fimi/album/entity/MediaModel;
    .end local v7    # "temp_file":Ljava/io/File;
    :cond_6
    invoke-static {}, Lcom/fimi/album/biz/DateComparator;->createDateComparator()Ljava/util/Comparator;

    move-result-object v8

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 144
    iget-object v8, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->localDataNoHeadList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v8, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->localDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v9, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->dataHash:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0, v8, v9}, Lcom/fimi/album/biz/Gh2FolderDispater;->addHeadModelBean(Ljava/util/List;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;)V

    .line 156
    iget-object v8, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    if-eqz v8, :cond_7

    .line 157
    iget-object v8, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    .line 158
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->isHadForEachFolder:Z

    .line 165
    .end local v3    # "files":[Ljava/io/File;
    .end local v5    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    :cond_7
    :goto_6
    return-void

    .line 161
    :cond_8
    iget-object v8, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    if-eqz v8, :cond_7

    .line 162
    iget-object v8, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/fimi/album/iview/IDateHandler;->loadDateComplete(ZZ)V

    goto :goto_6
.end method

.method public removeCallBack()V
    .locals 0

    .prologue
    .line 257
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    return-void
.end method

.method public setHadForEachFolder(Z)V
    .locals 0
    .param p1, "hadForEachFolder"    # Z

    .prologue
    .line 220
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    iput-boolean p1, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->isHadForEachFolder:Z

    .line 221
    return-void
.end method

.method public setPhotoCount(J)V
    .locals 1
    .param p1, "photoCount"    # J

    .prologue
    .line 252
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    iput-wide p1, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->photoCount:J

    .line 253
    return-void
.end method

.method public setVideoCount(J)V
    .locals 1
    .param p1, "videoCount"    # J

    .prologue
    .line 244
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    iput-wide p1, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->videoCount:J

    .line 245
    return-void
.end method

.method public setmIDateHandler(Lcom/fimi/album/iview/IDateHandler;)V
    .locals 0
    .param p1, "mIDateHandler"    # Lcom/fimi/album/iview/IDateHandler;

    .prologue
    .line 236
    .local p0, "this":Lcom/fimi/album/biz/Gh2FolderDispater;, "Lcom/fimi/album/biz/Gh2FolderDispater<TT;>;"
    iput-object p1, p0, Lcom/fimi/album/biz/Gh2FolderDispater;->mIDateHandler:Lcom/fimi/album/iview/IDateHandler;

    .line 237
    return-void
.end method
