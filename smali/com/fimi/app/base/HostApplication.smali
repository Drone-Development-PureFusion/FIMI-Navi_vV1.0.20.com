.class public Lcom/fimi/app/base/HostApplication;
.super Lcom/fimi/kernel/base/BaseApplication;
.source "HostApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseApplication;-><init>()V

    return-void
.end method

.method private registerRouter()V
    .locals 0

    .prologue
    .line 74
    invoke-static {}, Lcom/fimi/app/AppRouter;->register()V

    .line 75
    invoke-static {}, Lcom/fimi/libperson/PersonRouter;->register()V

    .line 78
    invoke-static {p0}, Lcom/fimi/app/x8s/X8sRouter;->register(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseApplication;->onCreate()V

    .line 57
    invoke-static {}, Lcom/fimi/host/HostConstants;->initUrl()V

    .line 58
    invoke-static {p0}, Lcom/fimi/thirdpartysdk/ThirdLoginManager;->initThirdLogin(Landroid/content/Context;)V

    .line 59
    invoke-static {p0}, Lcom/fimi/kernel/FimiAppContext;->initKernel(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Lcom/fimi/kernel/utils/MediaSDK;->getInstance()Lcom/fimi/kernel/utils/MediaSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/utils/MediaSDK;->init(Landroid/content/Context;)V

    .line 61
    invoke-static {p0}, Lcom/fimi/kernel/store/sqlite/helper/core/DbCore;->init(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/fimi/kernel/exception/CrashHandler;->getInstance()Lcom/fimi/kernel/exception/CrashHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fimi/app/base/HostApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/exception/CrashHandler;->init(Landroid/content/Context;)V

    .line 67
    invoke-direct {p0}, Lcom/fimi/app/base/HostApplication;->registerRouter()V

    .line 71
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseApplication;->onTerminate()V

    .line 87
    invoke-static {}, Lcom/fimi/kernel/utils/MediaSDK;->getInstance()Lcom/fimi/kernel/utils/MediaSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/utils/MediaSDK;->shutdown()V

    .line 88
    return-void
.end method
