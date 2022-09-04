.class public Lcom/fimi/kernel/fds/Zip2Fds;
.super Ljava/lang/Object;
.source "Zip2Fds.java"


# static fields
.field public static final EXIST_UNZIPFILE:I = 0x2

.field public static final EXIST_ZIPFILE:I = 0x4

.field public static final NOTEXIST_ZIPFILE:I = 0x1

.field public static final NULL_ZIPPATH:I = 0x0

.field public static final ZIPOPTION_FAIL:I = 0x5

.field public static final ZIPOPTION_SUCCESS:I = 0x3


# instance fields
.field fis:Ljava/io/FileInputStream;

.field private fos:Ljava/io/FileOutputStream;

.field private isStop:Z

.field private zos:Lcom/file/zip/ZipOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/fimi/kernel/fds/Zip2Fds;->zos:Lcom/file/zip/ZipOutputStream;

    .line 38
    iput-object v0, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    return-void
.end method

.method private zipEachFile(Lcom/file/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "zos"    # Lcom/file/zip/ZipOutputStream;
    .param p2, "zipFile"    # Ljava/io/File;
    .param p3, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 66
    .local v2, "entry":Lcom/file/zip/ZipEntry;
    :try_start_0
    new-instance v3, Lcom/file/zip/ZipEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/file/zip/ZipEntry;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v2    # "entry":Lcom/file/zip/ZipEntry;
    .local v3, "entry":Lcom/file/zip/ZipEntry;
    :try_start_1
    invoke-virtual {p1, v3}, Lcom/file/zip/ZipOutputStream;->putNextEntry(Lcom/file/zip/ZipEntry;)V

    .line 68
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    .line 69
    const/16 v5, 0x1400

    new-array v0, v5, [B

    .line 70
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 71
    .local v4, "readSize":I
    :goto_0
    iget-object v5, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    iget-boolean v5, p0, Lcom/fimi/kernel/fds/Zip2Fds;->isStop:Z

    if-nez v5, :cond_0

    .line 72
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v4}, Lcom/file/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 74
    .end local v0    # "buffer":[B
    .end local v4    # "readSize":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 75
    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "entry":Lcom/file/zip/ZipEntry;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    iget-object v5, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 79
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    .line 80
    invoke-virtual {p1}, Lcom/file/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 78
    .end local v2    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v0    # "buffer":[B
    .restart local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v4    # "readSize":I
    :cond_0
    :try_start_4
    iget-object v5, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 79
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    .line 80
    invoke-virtual {p1}, Lcom/file/zip/ZipOutputStream;->closeEntry()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 83
    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v2    # "entry":Lcom/file/zip/ZipEntry;
    goto :goto_2

    .line 81
    .end local v2    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v3    # "entry":Lcom/file/zip/ZipEntry;
    :catch_1
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 84
    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v2    # "entry":Lcom/file/zip/ZipEntry;
    goto :goto_2

    .line 81
    .end local v0    # "buffer":[B
    .end local v4    # "readSize":I
    :catch_2
    move-exception v1

    .line 82
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 78
    :goto_3
    :try_start_5
    iget-object v6, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 79
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    .line 80
    invoke-virtual {p1}, Lcom/file/zip/ZipOutputStream;->closeEntry()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 84
    :goto_4
    throw v5

    .line 81
    :catch_3
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v3    # "entry":Lcom/file/zip/ZipEntry;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v2    # "entry":Lcom/file/zip/ZipEntry;
    goto :goto_3

    .line 74
    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public log2Zip(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "suffix"    # [Ljava/lang/String;

    .prologue
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "zipName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 45
    .local v2, "ret":Z
    invoke-static {p1, p2}, Lcom/fimi/kernel/utils/FileUtil;->listFiles3(Ljava/io/File;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 46
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v1}, Lcom/fimi/kernel/fds/Zip2Fds;->zip2(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 48
    .local v0, "code":I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 49
    :cond_0
    const/4 v2, 0x1

    .line 52
    .end local v0    # "code":I
    .end local v2    # "ret":Z
    :cond_1
    return v2
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/kernel/fds/Zip2Fds;->isStop:Z

    .line 137
    iget-object v1, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 143
    :goto_0
    iput-object v2, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fos:Ljava/io/FileOutputStream;

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/fimi/kernel/fds/Zip2Fds;->zos:Lcom/file/zip/ZipOutputStream;

    if-eqz v1, :cond_1

    .line 148
    :try_start_1
    iget-object v1, p0, Lcom/fimi/kernel/fds/Zip2Fds;->zos:Lcom/file/zip/ZipOutputStream;

    invoke-virtual {v1}, Lcom/file/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    if-eqz v1, :cond_2

    .line 155
    :try_start_2
    iget-object v1, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    :goto_2
    iput-object v2, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fis:Ljava/io/FileInputStream;

    .line 161
    :cond_2
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_2

    .line 140
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public zip2(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 10
    .param p1, "fileDir"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "wantZipFile":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v6, 0x5

    .line 96
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "file1":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    const/4 v6, 0x4

    .line 132
    :goto_0
    return v6

    .line 100
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "tmpName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fos:Ljava/io/FileOutputStream;

    .line 105
    new-instance v7, Lcom/file/zip/ZipOutputStream;

    iget-object v8, p0, Lcom/fimi/kernel/fds/Zip2Fds;->fos:Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Lcom/file/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/fimi/kernel/fds/Zip2Fds;->zos:Lcom/file/zip/ZipOutputStream;

    .line 106
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 107
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 111
    iget-boolean v8, p0, Lcom/fimi/kernel/fds/Zip2Fds;->isStop:Z

    if-nez v8, :cond_2

    .line 112
    iget-object v8, p0, Lcom/fimi/kernel/fds/Zip2Fds;->zos:Lcom/file/zip/ZipOutputStream;

    const-string v9, ""

    invoke-direct {p0, v8, v4, v9}, Lcom/fimi/kernel/fds/Zip2Fds;->zipEachFile(Lcom/file/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 120
    .end local v4    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 121
    .local v3, "ie":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    iget-object v7, p0, Lcom/fimi/kernel/fds/Zip2Fds;->zos:Lcom/file/zip/ZipOutputStream;

    invoke-virtual {v7}, Lcom/file/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ie":Ljava/io/IOException;
    :cond_2
    :try_start_3
    iget-boolean v7, p0, Lcom/fimi/kernel/fds/Zip2Fds;->isStop:Z

    if-nez v7, :cond_3

    .line 118
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    :cond_3
    :try_start_4
    iget-object v7, p0, Lcom/fimi/kernel/fds/Zip2Fds;->zos:Lcom/file/zip/ZipOutputStream;

    invoke-virtual {v7}, Lcom/file/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 132
    const/4 v6, 0x3

    goto/16 :goto_0

    .line 126
    :catch_2
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 125
    :try_start_5
    iget-object v8, p0, Lcom/fimi/kernel/fds/Zip2Fds;->zos:Lcom/file/zip/ZipOutputStream;

    invoke-virtual {v8}, Lcom/file/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 131
    throw v7

    .line 126
    :catch_3
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
