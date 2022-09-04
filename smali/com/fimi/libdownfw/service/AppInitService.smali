.class public Lcom/fimi/libdownfw/service/AppInitService;
.super Landroid/app/Service;
.source "AppInitService.java"


# static fields
.field private static final PROGRESS_MAX:I = 0x64


# instance fields
.field private volatile checkingTaskCount:I

.field downloadManager:Lcom/fimi/network/DownloadManager;

.field needDownDto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation
.end field

.field oauthPresenter:Lcom/fimi/libdownfw/presenter/OauthPresenter;

.field x9FwManager:Lcom/fimi/network/FwManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcom/fimi/network/FwManager;

    invoke-direct {v0}, Lcom/fimi/network/FwManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/libdownfw/service/AppInitService;->x9FwManager:Lcom/fimi/network/FwManager;

    .line 27
    new-instance v0, Lcom/fimi/network/DownloadManager;

    invoke-direct {v0}, Lcom/fimi/network/DownloadManager;-><init>()V

    iput-object v0, p0, Lcom/fimi/libdownfw/service/AppInitService;->downloadManager:Lcom/fimi/network/DownloadManager;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/libdownfw/service/AppInitService;->checkingTaskCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libdownfw/service/AppInitService;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libdownfw/service/AppInitService;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fimi/libdownfw/service/AppInitService;->getOuthVerification()V

    return-void
.end method

.method private getOuthVerification()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "access_token_sp"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/fimi/libdownfw/presenter/OauthPresenter;

    invoke-direct {v0}, Lcom/fimi/libdownfw/presenter/OauthPresenter;-><init>()V

    iput-object v0, p0, Lcom/fimi/libdownfw/service/AppInitService;->oauthPresenter:Lcom/fimi/libdownfw/presenter/OauthPresenter;

    .line 75
    iget-object v0, p0, Lcom/fimi/libdownfw/service/AppInitService;->oauthPresenter:Lcom/fimi/libdownfw/presenter/OauthPresenter;

    invoke-virtual {v0}, Lcom/fimi/libdownfw/presenter/OauthPresenter;->getAccessToken()V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 39
    new-instance v0, Lcom/fimi/libdownfw/service/AppInitService$1;

    invoke-direct {v0, p0}, Lcom/fimi/libdownfw/service/AppInitService$1;-><init>(Lcom/fimi/libdownfw/service/AppInitService;)V

    invoke-static {v0}, Lcom/fimi/kernel/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 46
    new-instance v0, Lcom/fimi/libdownfw/service/AppInitService$2;

    invoke-direct {v0, p0}, Lcom/fimi/libdownfw/service/AppInitService$2;-><init>(Lcom/fimi/libdownfw/service/AppInitService;)V

    invoke-static {v0}, Lcom/fimi/kernel/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
