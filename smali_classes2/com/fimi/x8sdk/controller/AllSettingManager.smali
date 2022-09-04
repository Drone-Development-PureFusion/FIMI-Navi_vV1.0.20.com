.class public Lcom/fimi/x8sdk/controller/AllSettingManager;
.super Ljava/lang/Object;
.source "AllSettingManager.java"


# static fields
.field private static final ourInstance:Lcom/fimi/x8sdk/controller/AllSettingManager;


# instance fields
.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/fimi/x8sdk/controller/AllSettingManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/controller/AllSettingManager;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/controller/AllSettingManager;->ourInstance:Lcom/fimi/x8sdk/controller/AllSettingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/fimi/x8sdk/controller/AllSettingManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/fimi/x8sdk/controller/AllSettingManager;->ourInstance:Lcom/fimi/x8sdk/controller/AllSettingManager;

    return-object v0
.end method


# virtual methods
.method public getAllSetting()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$1;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$1;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getReturnHomeHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 53
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$2;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$2;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getPilotMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 59
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$3;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$3;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 65
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$4;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$4;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 71
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$5;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$5;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getAiFollowEnableBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 76
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$6;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$6;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getLowPowerOpt(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 85
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$7;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$7;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getFlyHeight(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 96
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$8;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$8;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getGpsSpeedParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 108
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$9;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$9;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getFlyDistanceParam(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 119
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$10;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$10;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getSportMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 133
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$11;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$11;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 140
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$12;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$12;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getLostAction(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 149
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$13;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$13;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getAccurateLanding(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 158
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$14;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$14;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getAutoHomePoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 166
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$15;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$15;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 173
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$16;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$16;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getRockerExp(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 180
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/x8sdk/controller/AllSettingManager$17;

    invoke-direct {v1, p0}, Lcom/fimi/x8sdk/controller/AllSettingManager$17;-><init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getAiFollowEnableBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto/16 :goto_0
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/x8sdk/controller/FcCtrlManager;Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p2, "mFcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .param p3, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 36
    iput-object p2, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 37
    iput-object p3, p0, Lcom/fimi/x8sdk/controller/AllSettingManager;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 38
    return-void
.end method
