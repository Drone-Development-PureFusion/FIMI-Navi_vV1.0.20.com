.class public Lcom/fimi/app/x8s/manager/X8MapGetCityManager;
.super Lcom/fimi/network/BaseManager;
.source "X8MapGetCityManager.java"


# static fields
.field public static locality:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, ""

    sput-object v0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager;->locality:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fimi/network/BaseManager;-><init>()V

    return-void
.end method

.method public static onSetHomeEvent(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;I)V
    .locals 10
    .param p0, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 20
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->hasHomeInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHomeInfo()Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->getHeight()F

    move-result v1

    .line 24
    .local v1, "h":F
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAccuracy()F

    move-result v7

    .line 25
    .local v7, "accuracy":F
    const-wide/16 v2, 0x0

    .line 26
    .local v2, "lat":D
    const-wide/16 v4, 0x0

    .line 27
    .local v4, "lng":D
    if-nez p1, :cond_1

    .line 28
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v2

    .line 29
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v4

    .line 40
    :goto_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v8, Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;

    invoke-direct {v8, p1, p0}, Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;-><init>(ILcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    move v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/fimi/x8sdk/controller/FcManager;->setHomePoint(FDDIFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getManLatLng()[D

    move-result-object v9

    .line 32
    .local v9, "latLng":[D
    if-nez v9, :cond_2

    .line 33
    sget v0, Lcom/fimi/app/x8s/R$string;->x8_general_return_person_failed:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 36
    :cond_2
    aget-wide v2, v9, v6

    .line 37
    const/4 v0, 0x1

    aget-wide v4, v9, v0

    goto :goto_1
.end method
