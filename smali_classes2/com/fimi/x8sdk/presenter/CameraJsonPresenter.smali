.class public Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "CameraJsonPresenter.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/ICamJsonAction;
.implements Lcom/fimi/kernel/connect/session/JsonListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 22
    invoke-virtual {p0, p0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->addNoticeListener(Lcom/fimi/kernel/connect/session/JsonListener;)V

    .line 23
    return-void
.end method


# virtual methods
.method public defaltSystem(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 60
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->defaultSystem(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 61
    return-void
.end method

.method public deleteOnlineFile(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 177
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->deleteFile(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 179
    return-void
.end method

.method public formatTFCard(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 54
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->formatTFCard(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 56
    return-void
.end method

.method public getCameraAwb()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCameraAWB()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 90
    return-void
.end method

.method public getCameraEV()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCameraEV()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 66
    return-void
.end method

.method public getCameraFocuse(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 167
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCameraFocuse(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 168
    return-void
.end method

.method public getCameraFocuseValues(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 172
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCameraFocuseValues(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 173
    return-void
.end method

.method public getCameraISO()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCameraISO()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 80
    return-void
.end method

.method public getCameraIsoOptions()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCameraIsoOptions()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 85
    return-void
.end method

.method public getCameraKeyOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCameraKeyOptions(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 144
    return-void
.end method

.method public getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 147
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 148
    return-void
.end method

.method public getCameraShutter()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCameraShutter()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 71
    return-void
.end method

.method public getCameraShutterOptions()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCameraShutterOptions()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 127
    return-void
.end method

.method public getCurAllParams(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 131
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCameraCurParams(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 132
    return-void
.end method

.method public getCurCameraParams(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 157
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->getCurCameraParams(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 158
    return-void
.end method

.method public onProcess(ILcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "msgId"    # I
    .param p2, "respJson"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 102
    invoke-static {}, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->getNoticeManager()Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->onProcess(ILcom/alibaba/fastjson/JSONObject;)V

    .line 103
    return-void
.end method

.method public onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/x8sdk/common/BasePresenter;->onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V

    .line 96
    invoke-static {}, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->getNoticeManager()Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->sendOutTime()V

    .line 98
    return-void
.end method

.method public removeLisnters()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->removeNoticeListener()V

    .line 107
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/connect/session/NoticeManager;->removeJsonListener(Lcom/fimi/kernel/connect/session/JsonListener;)V

    .line 108
    return-void
.end method

.method public setCameraDeControl(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 75
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->setCameraDeControl(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 76
    return-void
.end method

.method public setCameraEV(Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    .line 137
    .local v0, "curParamsJson":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    if-nez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getAe_bias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->setCameraEV(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0
.end method

.method public setCameraFocuse(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 162
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->setCameraFocuse(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 163
    return-void
.end method

.method public setCameraIso(Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    .line 113
    .local v0, "curParamsJson":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v1, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->setCameraIso(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0
.end method

.method public setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "paramValue"    # Ljava/lang/String;
    .param p2, "paramKey"    # Ljava/lang/String;
    .param p3, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 152
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->setCameraKeyParam(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 153
    return-void
.end method

.method public setCameraShutterTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "shutterTime"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    .line 120
    .local v0, "curParamsJson":Lcom/fimi/x8sdk/jsonResult/CurParamsJson;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getShutter_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v1, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->setCameraShutterTime(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0
.end method

.method public setCameraSys(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->setCamera(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 33
    return-void
.end method

.method public setInterestMetering(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->setInterestMetering(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 184
    return-void
.end method

.method public setPhotoFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->setPhotoFormat(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 49
    return-void
.end method

.method public setPhotoSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->setPhotoSize(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 44
    return-void
.end method

.method public setVideoResolution(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->setVideoResolution(Ljava/lang/String;)Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 38
    return-void
.end method

.method public startSession()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/fimi/x8sdk/command/CameraJsonCollection;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraJsonCollection;->startSession()Lcom/fimi/x8sdk/command/X8BaseCamJsonData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 28
    return-void
.end method
