.class public Lcom/fimi/album/x9/X9MediaFileLoad;
.super Ljava/lang/Object;
.source "X9MediaFileLoad.java"

# interfaces
.implements Lcom/fimi/album/download/interfaces/IMediaFileLoad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/download/interfaces/IMediaFileLoad;"
    }
.end annotation


# instance fields
.field imagePath:Ljava/lang/String;

.field private info:Lcom/fimi/album/download/entity/FileInfo;

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

.field private listener:Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;

.field private mDom4jManager:Lcom/fimi/kernel/utils/Dom4jManager;

.field private mFileLoader:Lcom/fimi/album/download/FileLoader;

.field private mHandler:Landroid/os/Handler;

.field thumPath:Ljava/lang/String;

.field urlPrex:Ljava/lang/String;

.field urlThumPrex:Ljava/lang/String;

.field xmlPath:Ljava/lang/String;

.field xmlUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;Ljava/util/List;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad;, "Lcom/fimi/album/x9/X9MediaFileLoad<TT;>;"
    .local p2, "listData":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/album/entity/MediaModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "http://192.168.40.1:8000/FIMI_PHOTO/.thumbnails/"

    iput-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->urlThumPrex:Ljava/lang/String;

    .line 33
    const-string v0, "http://192.168.40.1:8000/FIMI_PHOTO/"

    iput-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->urlPrex:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MiDroneMini/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->thumPath:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getX9LocalMedia()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->imagePath:Ljava/lang/String;

    .line 41
    const-string v0, "http://192.168.40.1:8000/FIMI_PHOTO/MediaFileList.xml"

    iput-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->xmlUrl:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MiDroneMini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->xmlPath:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/fimi/album/x9/X9MediaFileLoad$1;

    invoke-direct {v0, p0}, Lcom/fimi/album/x9/X9MediaFileLoad$1;-><init>(Lcom/fimi/album/x9/X9MediaFileLoad;)V

    iput-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->listener:Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;

    .line 81
    iput-object p2, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->listData:Ljava/util/List;

    .line 82
    new-instance v0, Lcom/fimi/album/download/FileLoader;

    invoke-direct {v0}, Lcom/fimi/album/download/FileLoader;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->mFileLoader:Lcom/fimi/album/download/FileLoader;

    .line 83
    new-instance v0, Lcom/fimi/kernel/utils/Dom4jManager;

    invoke-direct {v0}, Lcom/fimi/kernel/utils/Dom4jManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->mDom4jManager:Lcom/fimi/kernel/utils/Dom4jManager;

    .line 84
    new-instance v0, Lcom/fimi/album/download/entity/FileInfo;

    invoke-direct {v0}, Lcom/fimi/album/download/entity/FileInfo;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->info:Lcom/fimi/album/download/entity/FileInfo;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/album/x9/X9MediaFileLoad;)Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/x9/X9MediaFileLoad;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->listener:Lcom/fimi/album/x9/interfaces/OnX9MediaFileListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/album/x9/X9MediaFileLoad;)Lcom/fimi/album/download/entity/FileInfo;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/x9/X9MediaFileLoad;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->info:Lcom/fimi/album/download/entity/FileInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/album/x9/X9MediaFileLoad;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/x9/X9MediaFileLoad;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static stringToLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "strTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 220
    .local v0, "date":Ljava/util/Date;
    if-nez v0, :cond_0

    .line 221
    const-wide/16 v2, 0x0

    .line 223
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0
.end method


# virtual methods
.method public changeDateFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad;, "Lcom/fimi/album/x9/X9MediaFileLoad<TT;>;"
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, "df1":Ljava/text/DateFormat;
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 211
    .local v0, "date1":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "df1":Ljava/text/DateFormat;
    const-string/jumbo v3, "yyyy.MM.dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v1    # "df1":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "strTime":Ljava/lang/String;
    return-object v2
.end method

.method public getConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad;, "Lcom/fimi/album/x9/X9MediaFileLoad<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->listData:Ljava/util/List;

    return-object v0
.end method

.method public isExits(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 243
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad;, "Lcom/fimi/album/x9/X9MediaFileLoad<TT;>;"
    const/4 v1, 0x0

    .line 244
    .local v1, "ret":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const/4 v1, 0x1

    .line 248
    :cond_0
    return v1
.end method

.method public parseXml(Lcom/fimi/album/download/entity/FileInfo;)V
    .locals 19
    .param p1, "info"    # Lcom/fimi/album/download/entity/FileInfo;

    .prologue
    .line 129
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad;, "Lcom/fimi/album/x9/X9MediaFileLoad<TT;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->mDom4jManager:Lcom/fimi/kernel/utils/Dom4jManager;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/album/download/entity/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/album/download/entity/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "file"

    const-class v18, Lcom/fimi/album/entity/MediaFileInfo;

    .line 129
    invoke-virtual/range {v15 .. v18}, Lcom/fimi/kernel/utils/Dom4jManager;->readXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 132
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/album/entity/MediaFileInfo;>;"
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->imagePath:Ljava/lang/String;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v5, "fileDir":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->thumPath:Ljava/lang/String;

    invoke-direct {v12, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v12, "thumDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 135
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 137
    :cond_0
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 138
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 140
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_6

    .line 141
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fimi/album/entity/MediaFileInfo;

    .line 143
    .local v9, "mf":Lcom/fimi/album/entity/MediaFileInfo;
    new-instance v8, Lcom/fimi/album/entity/MediaModel;

    invoke-direct {v8}, Lcom/fimi/album/entity/MediaModel;-><init>()V

    .line 144
    .local v8, "m":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setName(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getSize()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Lcom/fimi/album/entity/MediaModel;->setFileSize(J)V

    .line 146
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getMd5()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setMd5(Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->imagePath:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setLocalFileDir(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->thumPath:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setLocalThumFileDir(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getAttr()Ljava/lang/String;

    move-result-object v15

    const-string v16, "pic"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 150
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->urlPrex:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 151
    .local v14, "url":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->urlThumPrex:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 152
    .local v11, "thum":Ljava/lang/String;
    invoke-virtual {v8, v14}, Lcom/fimi/album/entity/MediaModel;->setFileUrl(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v8, v11}, Lcom/fimi/album/entity/MediaModel;->setThumFileUrl(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setThumName(Ljava/lang/String;)V

    .line 155
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 178
    .end local v11    # "thum":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->imagePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 179
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->thumPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Lcom/fimi/album/entity/MediaModel;->getThumName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setThumLocalFilePath(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getGentime()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_5

    .line 140
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 156
    :cond_3
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getAttr()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "video"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 157
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    .line 158
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->urlPrex:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 160
    .restart local v14    # "url":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, ".mp4"

    const-string v17, ".jpg"

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "rename":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->urlThumPrex:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 162
    .restart local v11    # "thum":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lcom/fimi/album/entity/MediaModel;->setThumName(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v8, v14}, Lcom/fimi/album/entity/MediaModel;->setFileUrl(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v8, v11}, Lcom/fimi/album/entity/MediaModel;->setThumFileUrl(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getTime()Ljava/lang/String;

    move-result-object v13

    .line 167
    .local v13, "time":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getTime()Ljava/lang/String;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "durations":[Ljava/lang/String;
    array-length v15, v3

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x0

    aget-object v15, v3, v15

    const-string v16, "00"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 169
    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 172
    :cond_4
    invoke-virtual {v8, v13}, Lcom/fimi/album/entity/MediaModel;->setVideoDuration(Ljava/lang/String;)V

    .line 173
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setVideo(Z)V

    goto/16 :goto_1

    .line 184
    .end local v3    # "durations":[Ljava/lang/String;
    .end local v10    # "rename":Ljava/lang/String;
    .end local v11    # "thum":Ljava/lang/String;
    .end local v13    # "time":Ljava/lang/String;
    .end local v14    # "url":Ljava/lang/String;
    :cond_5
    :try_start_0
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getGentime()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/fimi/album/x9/X9MediaFileLoad;->changeDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "date":Ljava/lang/String;
    invoke-virtual {v8, v2}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getGentime()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/fimi/album/x9/X9MediaFileLoad;->stringToLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Lcom/fimi/album/entity/MediaModel;->setCreateDate(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v2    # "date":Ljava/lang/String;
    :goto_3
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getThumbsize()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumSize(J)V

    .line 193
    invoke-virtual {v8}, Lcom/fimi/album/entity/MediaModel;->getLocalFileDir()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/fimi/album/x9/X9MediaFileLoad;->isExits(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setDownLoadOriginalFile(Z)V

    .line 194
    invoke-virtual {v8}, Lcom/fimi/album/entity/MediaModel;->getLocalThumFileDir()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Lcom/fimi/album/entity/MediaModel;->getThumName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/fimi/album/x9/X9MediaFileLoad;->isExits(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setDownLoadThum(Z)V

    .line 195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/album/x9/X9MediaFileLoad;->listData:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 187
    :catch_0
    move-exception v4

    .line 188
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v9}, Lcom/fimi/album/entity/MediaFileInfo;->getGentime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/fimi/album/entity/MediaModel;->setFormatDate(Ljava/lang/String;)V

    .line 189
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Lcom/fimi/album/entity/MediaModel;->setCreateDate(J)V

    .line 190
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3

    .line 200
    .end local v4    # "e":Ljava/text/ParseException;
    .end local v8    # "m":Lcom/fimi/album/entity/MediaModel;
    .end local v9    # "mf":Lcom/fimi/album/entity/MediaFileInfo;
    :cond_6
    return-void
.end method

.method public startLoad()V
    .locals 3

    .prologue
    .line 90
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad;, "Lcom/fimi/album/x9/X9MediaFileLoad<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->info:Lcom/fimi/album/download/entity/FileInfo;

    iget-object v1, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->xmlPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fimi/album/download/entity/FileInfo;->setPath(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->info:Lcom/fimi/album/download/entity/FileInfo;

    iget-object v1, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->xmlUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fimi/album/download/entity/FileInfo;->setUrl(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->info:Lcom/fimi/album/download/entity/FileInfo;

    const-string v1, "mini.mfl"

    invoke-virtual {v0, v1}, Lcom/fimi/album/download/entity/FileInfo;->setFileName(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->mFileLoader:Lcom/fimi/album/download/FileLoader;

    iget-object v1, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->info:Lcom/fimi/album/download/entity/FileInfo;

    new-instance v2, Lcom/fimi/album/x9/X9MediaFileLoad$2;

    invoke-direct {v2, p0}, Lcom/fimi/album/x9/X9MediaFileLoad$2;-><init>(Lcom/fimi/album/x9/X9MediaFileLoad;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/album/download/FileLoader;->queueDownload(Lcom/fimi/album/download/entity/FileInfo;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V

    .line 122
    return-void
.end method

.method public stopLoad()V
    .locals 2

    .prologue
    .line 229
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad;, "Lcom/fimi/album/x9/X9MediaFileLoad<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad;->info:Lcom/fimi/album/download/entity/FileInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/download/entity/FileInfo;->setStop(Z)V

    .line 230
    return-void
.end method
