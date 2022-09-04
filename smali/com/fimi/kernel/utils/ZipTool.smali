.class public Lcom/fimi/kernel/utils/ZipTool;
.super Ljava/lang/Object;
.source "ZipTool.java"


# static fields
.field public static final EXIST_UNZIPFILE:I = 0x2

.field public static final EXIST_ZIPFILE:I = 0x4

.field public static final NOTEXIST_ZIPFILE:I = 0x1

.field public static final NULL_ZIPPATH:I = 0x0

.field public static final ZIPOPTION_FAIL:I = 0x5

.field public static final ZIPOPTION_SUCCESS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "unzipPath"    # Ljava/lang/String;

    .prologue
    .line 60
    if-eqz p0, :cond_0

    const-string v7, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    :cond_0
    const/4 v7, 0x0

    .line 97
    :goto_0
    return v7

    .line 65
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 73
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 75
    const/4 v7, 0x1

    goto :goto_0

    .line 69
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 78
    .restart local v4    # "file":Ljava/io/File;
    :cond_3
    const/4 v6, 0x0

    .line 80
    .local v6, "zipFile":Lcom/file/zip/ZipFile;
    :try_start_0
    new-instance v6, Lcom/file/zip/ZipFile;

    .end local v6    # "zipFile":Lcom/file/zip/ZipFile;
    const-string v7, "GBK"

    invoke-direct {v6, v4, v7}, Lcom/file/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .restart local v6    # "zipFile":Lcom/file/zip/ZipFile;
    invoke-virtual {v6}, Lcom/file/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v2

    .line 88
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Lcom/file/zip/ZipEntry;>;"
    const/4 v3, 0x0

    .line 89
    .local v3, "entry":Lcom/file/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "unzipAbpath":Ljava/lang/String;
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    check-cast v3, Lcom/file/zip/ZipEntry;

    .line 94
    .restart local v3    # "entry":Lcom/file/zip/ZipEntry;
    invoke-static {v6, v3, v5}, Lcom/fimi/kernel/utils/ZipTool;->unzipEachFile(Lcom/file/zip/ZipFile;Lcom/file/zip/ZipEntry;Ljava/lang/String;)V

    goto :goto_2

    .line 81
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Lcom/file/zip/ZipEntry;>;"
    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    .end local v5    # "unzipAbpath":Ljava/lang/String;
    .end local v6    # "zipFile":Lcom/file/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    const/4 v7, 0x5

    goto :goto_0

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Lcom/file/zip/ZipEntry;>;"
    .restart local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v5    # "unzipAbpath":Ljava/lang/String;
    .restart local v6    # "zipFile":Lcom/file/zip/ZipFile;
    :cond_4
    const/4 v7, 0x3

    goto :goto_0
.end method

.method private static unzipEachFile(Lcom/file/zip/ZipFile;Lcom/file/zip/ZipEntry;Ljava/lang/String;)V
    .locals 16
    .param p0, "zipFile"    # Lcom/file/zip/ZipFile;
    .param p1, "entry"    # Lcom/file/zip/ZipEntry;
    .param p2, "unzipAbpath"    # Ljava/lang/String;

    .prologue
    .line 112
    const/16 v14, 0x1400

    new-array v1, v14, [B

    .line 113
    .local v1, "buffer":[B
    const/4 v9, 0x0

    .line 114
    .local v9, "readSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "name":Ljava/lang/String;
    move-object v3, v8

    .line 116
    .local v3, "fileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 117
    .local v6, "index":I
    const-string v10, ""

    .line 120
    .local v10, "tempDir":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/file/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 121
    new-instance v12, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v12, "tempFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 123
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 130
    .end local v12    # "tempFile":Ljava/io/File;
    :cond_0
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v14, -0x1

    if-eq v6, v14, :cond_1

    .line 131
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v8, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 132
    const/4 v14, 0x0

    invoke-virtual {v8, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 133
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v11, "tempDirFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 135
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 140
    .end local v11    # "tempDirFile":Ljava/io/File;
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 141
    .local v13, "zipPath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v12    # "tempFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 143
    .local v7, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 145
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/file/zip/ZipFile;->getInputStream(Lcom/file/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 146
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 147
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 150
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_3

    .line 152
    const/4 v14, 0x0

    invoke-virtual {v5, v1, v14, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 155
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 156
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 160
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 167
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 159
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 160
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .line 164
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 161
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 163
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 165
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 163
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 158
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 159
    :goto_3
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 160
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 165
    :goto_4
    throw v14

    .line 161
    :catch_3
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 163
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 158
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 154
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static zip(Ljava/lang/String;[Ljava/io/File;)I
    .locals 14
    .param p0, "newZipPath"    # Ljava/lang/String;
    .param p1, "wantZipFile"    # [Ljava/io/File;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x5

    .line 178
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 180
    const/4 v10, 0x4

    .line 223
    :goto_0
    return v10

    .line 184
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "filePath":Ljava/lang/String;
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    .line 186
    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 185
    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "basePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "dirFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 192
    :cond_1
    const/4 v8, 0x0

    .line 195
    .local v8, "zos":Lcom/file/zip/ZipOutputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 196
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 200
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 201
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v9, Lcom/file/zip/ZipOutputStream;

    invoke-direct {v9, v5}, Lcom/file/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local v8    # "zos":Lcom/file/zip/ZipOutputStream;
    .local v9, "zos":Lcom/file/zip/ZipOutputStream;
    :try_start_1
    array-length v12, p1

    :goto_1
    if-ge v11, v12, :cond_4

    aget-object v7, p1, v11

    .line 203
    .local v7, "tempFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 202
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 208
    :cond_3
    const-string v13, ""

    invoke-static {v9, v7, v13}, Lcom/fimi/kernel/utils/ZipTool;->zipEachFile(Lcom/file/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 210
    .end local v7    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v6

    move-object v8, v9

    .line 211
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "zos":Lcom/file/zip/ZipOutputStream;
    .local v6, "ie":Ljava/io/IOException;
    .restart local v8    # "zos":Lcom/file/zip/ZipOutputStream;
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :try_start_3
    invoke-virtual {v8}, Lcom/file/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 216
    :catch_1
    move-exception v2

    .line 217
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 218
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "ie":Ljava/io/IOException;
    .end local v8    # "zos":Lcom/file/zip/ZipOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "zos":Lcom/file/zip/ZipOutputStream;
    :cond_4
    :try_start_4
    invoke-virtual {v9}, Lcom/file/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 223
    const/4 v10, 0x3

    goto :goto_0

    .line 216
    :catch_2
    move-exception v2

    .line 217
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 218
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "zos":Lcom/file/zip/ZipOutputStream;
    .restart local v8    # "zos":Lcom/file/zip/ZipOutputStream;
    :catchall_0
    move-exception v11

    .line 215
    :goto_4
    :try_start_5
    invoke-virtual {v8}, Lcom/file/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 221
    throw v11

    .line 216
    :catch_3
    move-exception v2

    .line 217
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 218
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "zos":Lcom/file/zip/ZipOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "zos":Lcom/file/zip/ZipOutputStream;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "zos":Lcom/file/zip/ZipOutputStream;
    .restart local v8    # "zos":Lcom/file/zip/ZipOutputStream;
    goto :goto_4

    .line 210
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    goto :goto_3
.end method

.method private static zipEachFile(Lcom/file/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 12
    .param p0, "zos"    # Lcom/file/zip/ZipOutputStream;
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "baseDir"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 238
    const/4 v2, 0x0

    .line 241
    .local v2, "entry":Lcom/file/zip/ZipEntry;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 243
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 245
    .local v8, "tempFiles":[Ljava/io/File;
    array-length v10, v8

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v7, v8, v9

    .line 246
    .local v7, "tempFile":Ljava/io/File;
    invoke-static {p0, v7, p2}, Lcom/fimi/kernel/utils/ZipTool;->zipEachFile(Lcom/file/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 245
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 252
    .end local v7    # "tempFile":Ljava/io/File;
    .end local v8    # "tempFiles":[Ljava/io/File;
    :cond_0
    const/4 v4, 0x0

    .line 254
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Lcom/file/zip/ZipEntry;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/file/zip/ZipEntry;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v2    # "entry":Lcom/file/zip/ZipEntry;
    .local v3, "entry":Lcom/file/zip/ZipEntry;
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/file/zip/ZipOutputStream;->putNextEntry(Lcom/file/zip/ZipEntry;)V

    .line 256
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    const/16 v9, 0x1400

    :try_start_2
    new-array v0, v9, [B

    .line 258
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 259
    .local v6, "readSize":I
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 260
    const/4 v9, 0x0

    invoke-virtual {p0, v0, v9, v6}, Lcom/file/zip/ZipOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 262
    .end local v0    # "buffer":[B
    .end local v6    # "readSize":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 263
    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "entry":Lcom/file/zip/ZipEntry;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 267
    invoke-virtual {p0}, Lcom/file/zip/ZipOutputStream;->closeEntry()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_3
    return-void

    .line 266
    .end local v2    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v0    # "buffer":[B
    .restart local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "readSize":I
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 267
    invoke-virtual {p0}, Lcom/file/zip/ZipOutputStream;->closeEntry()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 270
    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v2    # "entry":Lcom/file/zip/ZipEntry;
    goto :goto_3

    .line 268
    .end local v2    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v3    # "entry":Lcom/file/zip/ZipEntry;
    :catch_1
    move-exception v1

    .line 269
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 271
    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v2    # "entry":Lcom/file/zip/ZipEntry;
    goto :goto_3

    .line 268
    .end local v0    # "buffer":[B
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "readSize":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 269
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 265
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 266
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 267
    invoke-virtual {p0}, Lcom/file/zip/ZipOutputStream;->closeEntry()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 271
    :goto_5
    throw v9

    .line 268
    :catch_3
    move-exception v1

    .line 269
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 265
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v3    # "entry":Lcom/file/zip/ZipEntry;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v2    # "entry":Lcom/file/zip/ZipEntry;
    goto :goto_4

    .end local v2    # "entry":Lcom/file/zip/ZipEntry;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v2    # "entry":Lcom/file/zip/ZipEntry;
    goto :goto_4

    .line 262
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v2    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v3    # "entry":Lcom/file/zip/ZipEntry;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "entry":Lcom/file/zip/ZipEntry;
    .restart local v2    # "entry":Lcom/file/zip/ZipEntry;
    goto :goto_2
.end method
