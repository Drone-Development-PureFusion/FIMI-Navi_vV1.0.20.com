.class Lcom/fimi/apk/DownloadApkService$1;
.super Landroid/os/Handler;
.source "DownloadApkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/apk/DownloadApkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private nPos:I

.field final synthetic this$0:Lcom/fimi/apk/DownloadApkService;


# direct methods
.method constructor <init>(Lcom/fimi/apk/DownloadApkService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/apk/DownloadApkService;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fimi/apk/DownloadApkService$1;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/apk/DownloadApkService$1;->nPos:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 98
    .local v0, "progrss":I
    iget v1, p0, Lcom/fimi/apk/DownloadApkService$1;->nPos:I

    if-eq v1, v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/fimi/apk/DownloadApkService$1;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-static {v1}, Lcom/fimi/apk/DownloadApkService;->access$000(Lcom/fimi/apk/DownloadApkService;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lcom/fimi/sdk/R$id;->download_bar:I

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 101
    iget-object v1, p0, Lcom/fimi/apk/DownloadApkService$1;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-static {v1}, Lcom/fimi/apk/DownloadApkService;->access$000(Lcom/fimi/apk/DownloadApkService;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lcom/fimi/sdk/R$id;->text_download_process:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    iput v0, p0, Lcom/fimi/apk/DownloadApkService$1;->nPos:I

    .line 104
    iget-object v1, p0, Lcom/fimi/apk/DownloadApkService$1;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-virtual {v1}, Lcom/fimi/apk/DownloadApkService;->showNotification()V

    goto :goto_0

    .line 108
    .end local v0    # "progrss":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/fimi/apk/DownloadApkService$1;->resetPos()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetPos()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/apk/DownloadApkService$1;->nPos:I

    .line 92
    return-void
.end method
