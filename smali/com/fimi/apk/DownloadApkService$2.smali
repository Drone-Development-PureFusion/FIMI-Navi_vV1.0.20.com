.class Lcom/fimi/apk/DownloadApkService$2;
.super Ljava/lang/Object;
.source "DownloadApkService.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/apk/DownloadApkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/apk/DownloadApkService;


# direct methods
.method constructor <init>(Lcom/fimi/apk/DownloadApkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/apk/DownloadApkService;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 2
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-static {v0}, Lcom/fimi/apk/DownloadApkService;->access$100(Lcom/fimi/apk/DownloadApkService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    iget-object v0, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-static {v0}, Lcom/fimi/apk/DownloadApkService;->access$300(Lcom/fimi/apk/DownloadApkService;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x22b8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 160
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fimi/apk/DownloadApkService;->access$402(Z)Z

    .line 161
    iget-object v0, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-virtual {v0}, Lcom/fimi/apk/DownloadApkService;->stopSelf()V

    .line 162
    return-void
.end method

.method public onProgress(II)V
    .locals 4
    .param p1, "progrss"    # I
    .param p2, "currentLength"    # I

    .prologue
    .line 118
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 119
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 120
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 121
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 122
    iget-object v1, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-static {v1}, Lcom/fimi/apk/DownloadApkService;->access$100(Lcom/fimi/apk/DownloadApkService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    const-string/jumbo v1, "zdy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " +++++++++++++  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 8
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-static {v2}, Lcom/fimi/apk/DownloadApkService;->access$100(Lcom/fimi/apk/DownloadApkService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    sget v3, Lcom/fimi/sdk/R$string;->fimi_sdk_apk_down_success:I

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 140
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-virtual {v4}, Lcom/fimi/apk/DownloadApkService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-static {v5}, Lcom/fimi/apk/DownloadApkService;->access$200(Lcom/fimi/apk/DownloadApkService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 142
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    :goto_0
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-virtual {v2, v1}, Lcom/fimi/apk/DownloadApkService;->startActivity(Landroid/content/Intent;)V

    .line 151
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-static {v2}, Lcom/fimi/apk/DownloadApkService;->access$300(Lcom/fimi/apk/DownloadApkService;)Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v3, 0x22b8

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 152
    invoke-static {v6}, Lcom/fimi/apk/DownloadApkService;->access$402(Z)Z

    .line 153
    iget-object v2, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-virtual {v2}, Lcom/fimi/apk/DownloadApkService;->stopSelf()V

    .line 154
    return-void

    .line 144
    .end local v0    # "data":Landroid/net/Uri;
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fimi/apk/DownloadApkService$2;->this$0:Lcom/fimi/apk/DownloadApkService;

    invoke-static {v3}, Lcom/fimi/apk/DownloadApkService;->access$200(Lcom/fimi/apk/DownloadApkService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "data":Landroid/net/Uri;
    goto :goto_0
.end method
