.class public Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;
.super Landroid/os/AsyncTask;
.source "X8ShotAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private btp:Landroid/graphics/Bitmap;

.field private callback:Lcom/fimi/app/x8s/interfaces/IFimiShotResult;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/interfaces/IFimiShotResult;I)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "callback"    # Lcom/fimi/app/x8s/interfaces/IFimiShotResult;
    .param p3, "type"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->btp:Landroid/graphics/Bitmap;

    .line 23
    iput-object p1, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 24
    iput-object p2, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->callback:Lcom/fimi/app/x8s/interfaces/IFimiShotResult;

    .line 25
    iput p3, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->type:I

    .line 26
    return-void
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->btp:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 40
    iget v2, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->type:I

    if-nez v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v2

    new-instance v3, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask$1;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask$1;-><init>(Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;)V

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->snapshot(Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;)V

    .line 55
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x4b

    if-ge v1, v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->btp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->btp:Landroid/graphics/Bitmap;

    return-object v2

    .line 48
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v2

    new-instance v3, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask$2;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask$2;-><init>(Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;)V

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->fpvShot(Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;)V

    goto :goto_0

    .line 60
    .restart local v1    # "i":I
    :cond_2
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->callback:Lcom/fimi/app/x8s/interfaces/IFimiShotResult;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/interfaces/IFimiShotResult;->onShotResult(Landroid/graphics/Bitmap;)V

    .line 73
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 34
    return-void
.end method

.method public recycleBitmap()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->btp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->btp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->btp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    :cond_0
    return-void
.end method
