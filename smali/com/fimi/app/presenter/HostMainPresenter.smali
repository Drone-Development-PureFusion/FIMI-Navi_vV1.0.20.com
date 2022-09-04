.class public Lcom/fimi/app/presenter/HostMainPresenter;
.super Ljava/lang/Object;
.source "HostMainPresenter.java"

# interfaces
.implements Lcom/fimi/network/IDownProgress;


# static fields
.field static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dialogManager:Lcom/fimi/widget/DialogManager;

.field iFirmwareDownView:Lcom/fimi/libdownfw/ivew/IFirmwareDownView;

.field isProviderEnabled:Z

.field private lm:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;

.field position:I

.field private productControler:Lcom/fimi/app/interfaces/IProductControllers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fimi/app/presenter/HostMainPresenter;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fimi/libdownfw/ivew/IFirmwareDownView;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "iFirmwareDownView"    # Lcom/fimi/libdownfw/ivew/IFirmwareDownView;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/presenter/HostMainPresenter;->position:I

    .line 65
    iput-object p1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->iFirmwareDownView:Lcom/fimi/libdownfw/ivew/IFirmwareDownView;

    .line 67
    invoke-direct {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->initSessionAndNotice()V

    .line 68
    invoke-direct {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->initTTs()V

    .line 69
    invoke-direct {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->initDownListener()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/presenter/HostMainPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/presenter/HostMainPresenter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/presenter/HostMainPresenter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/presenter/HostMainPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/fimi/app/presenter/HostMainPresenter;->toGh2MainActivity(Z)V

    return-void
.end method

.method public static checkUpfireList()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/fimi/host/HostConstants;->getNeedDownFw()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fimi/app/presenter/HostMainPresenter;->list:Ljava/util/List;

    .line 79
    return-void
.end method

.method public static getUpfireList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcom/fimi/app/presenter/HostMainPresenter;->list:Ljava/util/List;

    return-object v0
.end method

.method private initDownListener()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/fimi/network/DownNoticeMananger;->getDownNoticManger()Lcom/fimi/network/DownNoticeMananger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/network/DownNoticeMananger;->addDownNoticeList(Lcom/fimi/network/IDownProgress;)V

    .line 74
    return-void
.end method

.method private initSDK()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 173
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/fimi/kernel/AppBlockCanaryContext;

    invoke-direct {v2}, Lcom/fimi/kernel/AppBlockCanaryContext;-><init>()V

    invoke-static {v1, v2}, Lcom/github/moduth/blockcanary/BlockCanary;->install(Landroid/content/Context;Lcom/github/moduth/blockcanary/BlockCanaryContext;)Lcom/github/moduth/blockcanary/BlockCanary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/moduth/blockcanary/BlockCanary;->start()V

    .line 174
    invoke-static {}, Lcom/fimi/app/x8s/config/X8AiConfig;->getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/config/X8AiConfig;->init()V

    .line 175
    new-instance v0, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    invoke-direct {v0}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;-><init>()V

    .line 176
    .local v0, "builder":Lcom/fimi/x8sdk/common/GlobalConfig$Builder;
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v1

    sget-object v2, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_OPTION:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setMapType(Lcom/fimi/x8sdk/map/MapType;)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    move-result-object v1

    .line 177
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setMapStyle(I)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    move-result-object v1

    .line 178
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_RECTIFYIN_OPTION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setRectification(Z)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    move-result-object v1

    .line 179
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_SHOW_LOG_OPTION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setShowLog(Z)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    move-result-object v1

    .line 180
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_UNITY_OPTION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setShowmMtric(Z)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    move-result-object v1

    .line 181
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_GLINE_LINE_OPTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/common/GlobalConfig$Builder;->setGridLine(I)Lcom/fimi/x8sdk/common/GlobalConfig$Builder;

    .line 182
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->init(Lcom/fimi/x8sdk/common/GlobalConfig$Builder;)V

    .line 183
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->resetPrexString(Landroid/content/Context;)V

    .line 184
    invoke-static {}, Lcom/fimi/TcpClient;->createInit()V

    .line 185
    return-void

    .line 176
    :cond_0
    sget-object v1, Lcom/fimi/x8sdk/map/MapType;->GoogleMap:Lcom/fimi/x8sdk/map/MapType;

    goto :goto_0
.end method

.method private initSessionAndNotice()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->initInstance()V

    .line 113
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->initInstance()V

    .line 114
    return-void
.end method

.method private initTTs()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public static isDownFirmwareTip()Z
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/fimi/app/presenter/HostMainPresenter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fimi/app/presenter/HostMainPresenter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/fimi/network/DownFwService;->getState()Lcom/fimi/network/DownFwService$DownState;

    move-result-object v0

    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->UnStart:Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v0, v1}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/fimi/network/DownFwService;->getState()Lcom/fimi/network/DownFwService$DownState;

    move-result-object v0

    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v0, v1}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    .line 97
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openCameraDialog(Ljava/lang/String;)V
    .locals 6
    .param p1, "dialoghint"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v0, Lcom/fimi/widget/DialogManager;

    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f08043b

    .line 307
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f08040e

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fimi/widget/DialogManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fimi/app/presenter/HostMainPresenter;->dialogManager:Lcom/fimi/widget/DialogManager;

    .line 308
    iget-object v0, p0, Lcom/fimi/app/presenter/HostMainPresenter;->dialogManager:Lcom/fimi/widget/DialogManager;

    new-instance v1, Lcom/fimi/app/presenter/HostMainPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/presenter/HostMainPresenter$1;-><init>(Lcom/fimi/app/presenter/HostMainPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setOnDiaLogListener(Lcom/fimi/widget/DialogManager$OnDialogListener;)Lcom/fimi/widget/DialogManager;

    .line 328
    iget-object v0, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/fimi/app/presenter/HostMainPresenter;->dialogManager:Lcom/fimi/widget/DialogManager;

    invoke-virtual {v0}, Lcom/fimi/widget/DialogManager;->showDialog()V

    .line 331
    :cond_0
    return-void
.end method

.method private startX8s()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/kernel/Constants;->X9_BEGNNER_GUIDE_SETTING:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 189
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->X8_MAP_OPTION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 190
    .local v0, "b":Z
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v3

    if-eqz v0, :cond_0

    sget-object v2, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    :goto_0
    invoke-virtual {v3, v2}, Lcom/fimi/x8sdk/common/GlobalConfig;->setMapType(Lcom/fimi/x8sdk/map/MapType;)V

    .line 192
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v1, "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void

    .line 190
    .end local v1    # "it":Landroid/content/Intent;
    :cond_0
    sget-object v2, Lcom/fimi/x8sdk/map/MapType;->GoogleMap:Lcom/fimi/x8sdk/map/MapType;

    goto :goto_0
.end method

.method private toGh2MainActivity(Z)V
    .locals 3
    .param p1, "isProvider"    # Z

    .prologue
    .line 280
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->lm:Landroid/location/LocationManager;

    .line 281
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->lm:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->isProviderEnabled:Z

    .line 282
    iget-boolean v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->isProviderEnabled:Z

    if-nez v1, :cond_0

    .line 283
    iput-boolean p1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->isProviderEnabled:Z

    .line 285
    :cond_0
    iget-boolean v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->isProviderEnabled:Z

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f08043c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fimi/app/presenter/HostMainPresenter;->openCameraDialog(Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const-string v2, "activity://gh2.main"

    invoke-static {v1, v2}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 295
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method gh2PermissionDetection()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public go2DownSelectActivty()V
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lcom/fimi/host/HostConstants;->getNeedDownFw()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public gotoTeacher(Ljava/lang/String;)V
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 388
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_1

    .line 390
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    .line 392
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 393
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fimi/app/ui/main/HostNewMainActivity;

    .line 394
    .local v0, "activity":Lcom/fimi/app/ui/main/HostNewMainActivity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/ui/main/HostNewMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 403
    .end local v0    # "activity":Lcom/fimi/app/ui/main/HostNewMainActivity;
    :goto_0
    return-void

    .line 396
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 397
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 400
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 401
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isForce()Z
    .locals 2

    .prologue
    .line 88
    sget-object v1, Lcom/fimi/app/presenter/HostMainPresenter;->list:Ljava/util/List;

    invoke-static {v1}, Lcom/fimi/host/HostConstants;->isForceUpdate(Ljava/util/List;)Z

    move-result v0

    .line 91
    .local v0, "isForce":Z
    return v0
.end method

.method public onConnectDevice()V
    .locals 7

    .prologue
    const v6, 0x10a0001

    const/high16 v5, 0x10a0000

    const/4 v4, 0x0

    .line 197
    sget-object v2, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v3, Lcom/fimi/host/common/ProductEnum;->X8S:Lcom/fimi/host/common/ProductEnum;

    if-ne v2, v3, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->startX8s()V

    .line 257
    :goto_0
    return-void

    .line 199
    :cond_0
    sget-object v2, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v3, Lcom/fimi/host/common/ProductEnum;->FIMIAPP:Lcom/fimi/host/common/ProductEnum;

    if-ne v2, v3, :cond_6

    .line 200
    iget v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->position:I

    if-nez v2, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->startX8s()V

    goto :goto_0

    .line 202
    :cond_1
    iget v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->position:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 205
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/fimi/kernel/permission/PermissionManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 206
    invoke-static {}, Lcom/fimi/kernel/permission/PermissionManager;->hasLocaltionPermissions()Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->showLocaltionPermissionDialog()V

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/kernel/Constants;->X9_BEGNNER_GUIDE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 213
    .local v0, "isStartBegnnerGuide":Z
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->productControler:Lcom/fimi/app/interfaces/IProductControllers;

    invoke-interface {v2}, Lcom/fimi/app/interfaces/IProductControllers;->stopAnimation()V

    .line 214
    if-eqz v0, :cond_3

    .line 215
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const-string v3, "activity://x9.main"

    invoke-static {v2, v3}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 216
    .local v1, "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 217
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v5, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 219
    .end local v1    # "it":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/kernel/Constants;->X9_BEGNNER_GUIDE_SETTING:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 220
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const-string v3, "activity://x9.guide"

    invoke-static {v2, v3}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 221
    .restart local v1    # "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    .end local v0    # "isStartBegnnerGuide":Z
    .end local v1    # "it":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->showGpsDialog()V

    goto :goto_0

    .line 228
    :cond_5
    invoke-virtual {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->gh2PermissionDetection()V

    goto :goto_0

    .line 230
    :cond_6
    sget-object v2, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v3, Lcom/fimi/host/common/ProductEnum;->X9:Lcom/fimi/host/common/ProductEnum;

    if-ne v2, v3, :cond_a

    .line 232
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/fimi/kernel/permission/PermissionManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 233
    invoke-static {}, Lcom/fimi/kernel/permission/PermissionManager;->hasLocaltionPermissions()Z

    move-result v2

    if-nez v2, :cond_7

    .line 235
    invoke-virtual {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->showLocaltionPermissionDialog()V

    goto/16 :goto_0

    .line 239
    :cond_7
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/kernel/Constants;->X9_BEGNNER_GUIDE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 240
    .restart local v0    # "isStartBegnnerGuide":Z
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->productControler:Lcom/fimi/app/interfaces/IProductControllers;

    invoke-interface {v2}, Lcom/fimi/app/interfaces/IProductControllers;->stopAnimation()V

    .line 241
    if-eqz v0, :cond_8

    .line 242
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const-string v3, "activity://x9.main"

    invoke-static {v2, v3}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 243
    .restart local v1    # "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 244
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v5, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 246
    .end local v1    # "it":Landroid/content/Intent;
    :cond_8
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/kernel/Constants;->X9_BEGNNER_GUIDE_SETTING:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 247
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const-string v3, "activity://x9.guide"

    invoke-static {v2, v3}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 248
    .restart local v1    # "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 252
    .end local v0    # "isStartBegnnerGuide":Z
    .end local v1    # "it":Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->showGpsDialog()V

    goto/16 :goto_0

    .line 255
    :cond_a
    invoke-virtual {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->gh2PermissionDetection()V

    goto/16 :goto_0
.end method

.method public onProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V
    .locals 1
    .param p1, "downState"    # Lcom/fimi/network/DownFwService$DownState;
    .param p2, "progrss"    # I
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/fimi/app/presenter/HostMainPresenter;->iFirmwareDownView:Lcom/fimi/libdownfw/ivew/IFirmwareDownView;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/libdownfw/ivew/IFirmwareDownView;->showDownFwProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V

    .line 336
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 136
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 137
    array-length v1, p3

    if-lez v1, :cond_0

    aget v1, p3, v2

    if-nez v1, :cond_0

    .line 139
    invoke-direct {p0, v2}, Lcom/fimi/app/presenter/HostMainPresenter;->toGh2MainActivity(Z)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 145
    array-length v1, p3

    if-lez v1, :cond_2

    aget v1, p3, v2

    if-nez v1, :cond_2

    .line 147
    invoke-static {}, Lcom/fimi/kernel/permission/PermissionManager;->requestRecordAudioPermissions()V

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {}, Lcom/fimi/kernel/permission/PermissionManager;->requestRecordAudioPermissions()V

    goto :goto_0

    .line 152
    :cond_3
    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    .line 153
    array-length v1, p3

    if-lez v1, :cond_4

    aget v1, p3, v2

    if-nez v1, :cond_4

    .line 155
    invoke-static {}, Lcom/fimi/kernel/permission/PermissionManager;->requestCameraPermissions()V

    goto :goto_0

    .line 158
    :cond_4
    invoke-static {}, Lcom/fimi/kernel/permission/PermissionManager;->requestCameraPermissions()V

    goto :goto_0

    .line 160
    :cond_5
    const/16 v1, 0x522

    if-ne p1, v1, :cond_6

    .line 161
    invoke-virtual {p0}, Lcom/fimi/app/presenter/HostMainPresenter;->gh2PermissionDetection()V

    goto :goto_0

    .line 162
    :cond_6
    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 164
    aget v1, p3, v0

    if-eqz v1, :cond_7

    .line 166
    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 163
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeNoticDownListener()V
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/fimi/network/DownNoticeMananger;->getDownNoticManger()Lcom/fimi/network/DownNoticeMananger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/network/DownNoticeMananger;->remioveDownNoticeList(Lcom/fimi/network/IDownProgress;)V

    .line 341
    return-void
.end method

.method public requestPermissions()V
    .locals 0

    .prologue
    .line 117
    invoke-static {}, Lcom/fimi/kernel/permission/PermissionManager;->requestStoragePermissions()V

    .line 118
    return-void
.end method

.method public requestX9Permissions(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 123
    invoke-static {p1}, Lcom/fimi/kernel/permission/PermissionManager;->checkRequiredPermission(Landroid/app/Activity;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->position:I

    .line 302
    return-void
.end method

.method public setProductControler(Lcom/fimi/app/interfaces/IProductControllers;)V
    .locals 0
    .param p1, "productControler"    # Lcom/fimi/app/interfaces/IProductControllers;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->productControler:Lcom/fimi/app/interfaces/IProductControllers;

    .line 345
    return-void
.end method

.method public showGpsDialog()V
    .locals 7

    .prologue
    .line 348
    new-instance v0, Lcom/fimi/widget/DialogManager;

    iget-object v1, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f08043c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f08043b

    .line 349
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/presenter/HostMainPresenter;->mContext:Landroid/content/Context;

    const v6, 0x7f080445

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/fimi/widget/DialogManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .local v0, "gpsDialogManager":Lcom/fimi/widget/DialogManager;
    new-instance v1, Lcom/fimi/app/presenter/HostMainPresenter$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/presenter/HostMainPresenter$2;-><init>(Lcom/fimi/app/presenter/HostMainPresenter;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setOnDiaLogListener(Lcom/fimi/widget/DialogManager$OnDialogListener;)Lcom/fimi/widget/DialogManager;

    .line 362
    invoke-virtual {v0}, Lcom/fimi/widget/DialogManager;->showDialog()V

    .line 363
    return-void
.end method

.method public showLocaltionPermissionDialog()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method
