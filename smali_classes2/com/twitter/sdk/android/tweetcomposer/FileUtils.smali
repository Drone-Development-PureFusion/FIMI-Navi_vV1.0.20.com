.class Lcom/twitter/sdk/android/tweetcomposer/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final MEDIA_SCHEME:Ljava/lang/String; = "com.android.providers.media.documents"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 114
    if-nez p0, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 118
    :goto_0
    return-object v1

    .line 117
    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "i":I
    if-gez v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "ext":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "application/octet-stream"

    goto :goto_0
.end method

.method static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 41
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-lt v10, v11, :cond_1

    move v3, v8

    .line 42
    .local v3, "isKitKat":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->isMediaDocumentAuthority(Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 43
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "documentId":Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "parts":[Ljava/lang/String;
    aget-object v6, v4, v9

    .line 48
    .local v6, "type":Ljava/lang/String;
    const-string v10, "image"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 49
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 56
    .local v1, "contentUri":Landroid/net/Uri;
    const-string v5, "_id=?"

    .line 57
    .local v5, "selection":Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    aget-object v7, v4, v8

    aput-object v7, v0, v9

    .line 60
    .local v0, "args":[Ljava/lang/String;
    const-string v7, "_id=?"

    invoke-static {p0, v1, v7, v0}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->resolveFilePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "documentId":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v7

    .end local v3    # "isKitKat":Z
    :cond_1
    move v3, v9

    .line 41
    goto :goto_0

    .line 61
    .restart local v3    # "isKitKat":Z
    :cond_2
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->isContentScheme(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 62
    invoke-static {p0, p1, v7, v7}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->resolveFilePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->isFileScheme(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method static isContentScheme(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isFileScheme(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 78
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isMediaDocumentAuthority(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 70
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static resolveFilePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 85
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 86
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 88
    .local v7, "i":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 91
    if-eqz v6, :cond_0

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 95
    .end local v7    # "i":I
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    if-eqz v6, :cond_2

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 95
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
