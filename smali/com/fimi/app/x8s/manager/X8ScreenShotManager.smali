.class public Lcom/fimi/app/x8s/manager/X8ScreenShotManager;
.super Ljava/lang/Object;
.source "X8ScreenShotManager.java"


# static fields
.field public static isBusy:Z


# instance fields
.field isFpvShotSuccess:Z

.field isMapShotSuccess:Z

.field private mFpvShotTask:Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

.field private mMapShotTask:Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceDisplaySize(Landroid/content/Context;)[F
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 106
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 107
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    .local v4, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 110
    .local v1, "height":I
    const/4 v5, 0x2

    new-array v3, v5, [F

    .line 111
    .local v3, "size":[F
    const/4 v5, 0x0

    int-to-float v6, v4

    aput v6, v3, v5

    .line 112
    const/4 v5, 0x1

    int-to-float v6, v1

    aput v6, v3, v5

    .line 114
    return-object v3
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 120
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 124
    :cond_0
    return v0
.end method

.method public static isEmptyBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 131
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .locals 4
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "recycle"    # Z

    .prologue
    .line 64
    invoke-static {p0}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    const/4 v2, 0x0

    .line 78
    :cond_0
    :goto_0
    return v2

    .line 68
    :cond_1
    const/4 v2, 0x0

    .line 70
    .local v2, "ret":Z
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 71
    .local v1, "os":Ljava/io/OutputStream;
    const/16 v3, 0x64

    invoke-virtual {p0, p2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 72
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveScreenBitmap(Landroid/app/Activity;)Ljava/lang/String;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->screenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8LocalSar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "yyyyMMddHHmmss"

    invoke-static {v6, v7, v8}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, "file":Ljava/io/File;
    const-string v4, ""

    .line 36
    .local v4, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 38
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 44
    :cond_0
    :goto_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x1

    invoke-static {v0, v2, v5, v6}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z

    move-result v3

    .line 45
    .local v3, "ret":Z
    if-eqz v3, :cond_1

    .line 46
    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_sar_save_pic_tip:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51
    .end local v3    # "ret":Z
    :cond_1
    :goto_1
    return-object v4

    .line 40
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static screenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 90
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 91
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 92
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    .line 94
    .local v3, "statusBarHeight":I
    invoke-static {p0}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->getDeviceDisplaySize(Landroid/content/Context;)[F

    move-result-object v6

    aget v6, v6, v7

    float-to-int v5, v6

    .line 95
    .local v5, "width":I
    invoke-static {p0}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->getDeviceDisplaySize(Landroid/content/Context;)[F

    move-result-object v6

    aget v6, v6, v8

    float-to-int v1, v6

    .line 96
    .local v1, "height":I
    invoke-static {v0, v7, v7, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 99
    .local v2, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 101
    return-object v2
.end method


# virtual methods
.method public isShotSave(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 162
    invoke-static {p1}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->saveScreenBitmap(Landroid/app/Activity;)Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->clearShotBitmap()V

    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->mFpvShotTask:Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->recycleBitmap()V

    .line 165
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->mMapShotTask:Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->recycleBitmap()V

    .line 166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->isBusy:Z

    .line 167
    return-void
.end method

.method public starThread(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 5
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 141
    sput-boolean v3, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->isBusy:Z

    .line 142
    new-instance v0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

    new-instance v1, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$1;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$1;-><init>(Lcom/fimi/app/x8s/manager/X8ScreenShotManager;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    invoke-direct {v0, p1, v1, v4}, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/interfaces/IFimiShotResult;I)V

    iput-object v0, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->mMapShotTask:Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

    .line 149
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->mMapShotTask:Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    new-instance v0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

    new-instance v1, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$2;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$2;-><init>(Lcom/fimi/app/x8s/manager/X8ScreenShotManager;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;-><init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/interfaces/IFimiShotResult;I)V

    iput-object v0, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->mFpvShotTask:Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

    .line 158
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->mFpvShotTask:Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    return-void
.end method
