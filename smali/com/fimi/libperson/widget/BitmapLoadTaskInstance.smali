.class public Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;
.super Ljava/lang/Object;
.source "BitmapLoadTaskInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;,
        Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapLoadTaskInstance"

.field private static sBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mOnLoadListener:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->executor:Ljava/util/concurrent/Executor;

    .line 36
    return-void
.end method

.method static synthetic access$000()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->sBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->onImageLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private execute(Landroid/os/AsyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;*>;"
    iget-object v0, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->executor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->sBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    invoke-direct {v0}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;-><init>()V

    sput-object v0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->sBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    .line 51
    :cond_0
    sget-object v0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->sBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    return-object v0
.end method

.method private declared-synchronized onImageLoaded(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->mBitmap:Landroid/graphics/Bitmap;

    .line 95
    iget-object v0, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->mOnLoadListener:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->mOnLoadListener:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;

    invoke-interface {v0}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public decode(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 104
    .local v13, "uriString":Ljava/lang/String;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 105
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v14, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 107
    const-string v14, "android.resource://"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 117
    .local v9, "res":Landroid/content/res/Resources;
    :goto_0
    const/4 v4, 0x0

    .line 118
    .local v4, "id":I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    .line 119
    .local v11, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 120
    .local v12, "size":I
    const/4 v14, 0x2

    if-ne v12, v14, :cond_3

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "drawable"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 121
    const/4 v14, 0x1

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 122
    .local v10, "resName":Ljava/lang/String;
    const-string v14, "drawable"

    invoke-virtual {v9, v10, v14, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 131
    .end local v10    # "resName":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14, v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 155
    .end local v4    # "id":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v11    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "size":I
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_2
    if-nez v2, :cond_8

    .line 156
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Skia image region decoder returned null bitmap - image format may not be supported"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 113
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 114
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .restart local v9    # "res":Landroid/content/res/Resources;
    goto :goto_0

    .line 123
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "id":I
    .restart local v11    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "size":I
    :cond_3
    const/4 v14, 0x1

    if-ne v12, v14, :cond_0

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 125
    const/4 v14, 0x0

    :try_start_0
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    goto :goto_1

    .line 132
    .end local v4    # "id":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v11    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "size":I
    :cond_4
    const-string v14, "file:///android_asset/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 133
    const-string v14, "file:///android_asset/"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "assetName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    const/4 v14, 0x0

    check-cast v14, Landroid/graphics/Rect;

    invoke-static {v15, v14, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 135
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .end local v1    # "assetName":Ljava/lang/String;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    const-string v14, "file://"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 136
    const-string v14, "file://"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 138
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    const/4 v5, 0x0

    .line 141
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 142
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 143
    const/4 v14, 0x0

    check-cast v14, Landroid/graphics/Rect;

    invoke-static {v5, v14, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 145
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 147
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 148
    :catch_0
    move-exception v14

    goto/16 :goto_2

    .line 145
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v14

    if-eqz v5, :cond_7

    .line 147
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 153
    :cond_7
    :goto_3
    throw v14

    .line 148
    :catch_1
    move-exception v15

    goto :goto_3

    .line 158
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    return-object v2

    .line 126
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "id":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v9    # "res":Landroid/content/res/Resources;
    .restart local v11    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "size":I
    :catch_2
    move-exception v14

    goto/16 :goto_1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setImage(Lcom/fimi/libperson/entity/ImageSource;Landroid/content/Context;)V
    .locals 3
    .param p1, "source"    # Lcom/fimi/libperson/entity/ImageSource;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    new-instance v0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;

    invoke-virtual {p1}, Lcom/fimi/libperson/entity/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 40
    .local v0, "bitmapLoadTask":Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$BitmapLoadTask;
    invoke-direct {p0, v0}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->execute(Landroid/os/AsyncTask;)V

    .line 41
    return-void
.end method

.method public setOnLoadListener(Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;)V
    .locals 0
    .param p1, "onLoadListener"    # Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->mOnLoadListener:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;

    .line 178
    return-void
.end method

.method public setRecyle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    iput-object v1, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->mBitmap:Landroid/graphics/Bitmap;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->mOnLoadListener:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;

    if-eqz v0, :cond_1

    .line 172
    iput-object v1, p0, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->mOnLoadListener:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;

    .line 174
    :cond_1
    return-void
.end method
