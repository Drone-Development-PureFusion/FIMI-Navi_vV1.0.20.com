.class public Lcom/fimi/apk/DownloadApkService;
.super Landroid/app/Service;
.source "DownloadApkService.java"


# static fields
.field public static final APK_FILE_NAME:Ljava/lang/String; = "temp_update.apk"

.field private static final NOTIFACTION_ID:I = 0x22b8

.field private static isDownApking:Z


# instance fields
.field public dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

.field downloadManager:Lcom/fimi/network/DownloadManager;

.field private handler:Landroid/os/Handler;

.field private notification:Landroid/app/Notification;

.field private notificationManager:Landroid/app/NotificationManager;

.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/apk/DownloadApkService;->isDownApking:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/fimi/network/DownloadManager;

    invoke-direct {v0}, Lcom/fimi/network/DownloadManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/apk/DownloadApkService;->downloadManager:Lcom/fimi/network/DownloadManager;

    .line 88
    new-instance v0, Lcom/fimi/apk/DownloadApkService$1;

    invoke-direct {v0, p0}, Lcom/fimi/apk/DownloadApkService$1;-><init>(Lcom/fimi/apk/DownloadApkService;)V

    iput-object v0, p0, Lcom/fimi/apk/DownloadApkService;->handler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v1, Lcom/fimi/apk/DownloadApkService$2;

    invoke-direct {v1, p0}, Lcom/fimi/apk/DownloadApkService$2;-><init>(Lcom/fimi/apk/DownloadApkService;)V

    invoke-direct {v0, v1}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    iput-object v0, p0, Lcom/fimi/apk/DownloadApkService;->dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/apk/DownloadApkService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/apk/DownloadApkService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/apk/DownloadApkService;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/apk/DownloadApkService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/apk/DownloadApkService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/apk/DownloadApkService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/apk/DownloadApkService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/apk/DownloadApkService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/apk/DownloadApkService;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/apk/DownloadApkService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/apk/DownloadApkService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/apk/DownloadApkService;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/fimi/apk/DownloadApkService;->isDownApking:Z

    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 58
    const-string v2, "notification"

    .line 59
    invoke-virtual {p0, v2}, Lcom/fimi/apk/DownloadApkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/fimi/apk/DownloadApkService;->notificationManager:Landroid/app/NotificationManager;

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 63
    .local v1, "pendIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lcom/fimi/apk/DownloadApkService;->notification:Landroid/app/Notification;

    .line 65
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService;->notification:Landroid/app/Notification;

    sget v3, Lcom/fimi/sdk/R$drawable;->ic_launcher:I

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 66
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService;->notification:Landroid/app/Notification;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/fimi/sdk/R$string;->fimi_sdk_apk_downing:I

    invoke-virtual {p0, v4}, Lcom/fimi/apk/DownloadApkService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/fimi/sdk/R$string;->app_product_name:I

    .line 67
    invoke-virtual {p0, v4}, Lcom/fimi/apk/DownloadApkService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 68
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService;->notification:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 69
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService;->notification:Landroid/app/Notification;

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/fimi/apk/DownloadApkService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/fimi/sdk/R$layout;->fimisdk_apk_download_notification:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 71
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcom/fimi/sdk/R$id;->download_bar:I

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 73
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcom/fimi/sdk/R$id;->text_download_title:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/fimi/sdk/R$string;->fimi_sdk_apk_downing:I

    .line 74
    invoke-virtual {p0, v5}, Lcom/fimi/apk/DownloadApkService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/fimi/sdk/R$string;->app_product_name:I

    .line 75
    invoke-virtual {p0, v5}, Lcom/fimi/apk/DownloadApkService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcom/fimi/sdk/R$id;->text_download_process:I

    const-string v4, "0%"

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 38
    const-string v1, "down_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 40
    sget-boolean v1, Lcom/fimi/apk/DownloadApkService;->isDownApking:Z

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "down_savepath"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temp_update.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/apk/DownloadApkService;->path:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/fimi/apk/DownloadApkService;->downloadManager:Lcom/fimi/network/DownloadManager;

    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/fimi/apk/DownloadApkService;->dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    invoke-virtual {v1, v0, v2, v3}, Lcom/fimi/network/DownloadManager;->downloadApk(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 43
    invoke-virtual {p0}, Lcom/fimi/apk/DownloadApkService;->showNotification()V

    .line 46
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method

.method public showNotification()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fimi/apk/DownloadApkService;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x22b8

    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 82
    return-void
.end method
