.class public Lcom/fimi/x8sdk/controller/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static volatile cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;


# instance fields
.field camAction:Lcom/fimi/x8sdk/ivew/ICamAction;

.field jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/x8sdk/controller/CameraManager;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/fimi/x8sdk/presenter/CameraPresenter;

    invoke-direct {v0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->camAction:Lcom/fimi/x8sdk/ivew/ICamAction;

    .line 40
    new-instance v0, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;

    invoke-direct {v0}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    .line 41
    return-void
.end method

.method public static getInstansCameraManager()Lcom/fimi/x8sdk/controller/CameraManager;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/fimi/x8sdk/controller/CameraManager;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/fimi/x8sdk/controller/CameraManager;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/fimi/x8sdk/controller/CameraManager;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/controller/CameraManager;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/controller/CameraManager;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/fimi/x8sdk/controller/CameraManager;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public defaltSystem(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->defaltSystem(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 154
    return-void
.end method

.method public deleteOnlineFile(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->deleteOnlineFile(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 248
    return-void
.end method

.method public formatTFCard(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->formatTFCard(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 148
    return-void
.end method

.method public getCameraAwb()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCameraAwb()V

    .line 181
    return-void
.end method

.method public getCameraCurParams(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCurAllParams(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 193
    return-void
.end method

.method public getCameraEV()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCameraEV()V

    .line 159
    return-void
.end method

.method public getCameraFocuse(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCameraFocuse(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 226
    return-void
.end method

.method public getCameraFocuseValues(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCameraFocuseValues(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 231
    return-void
.end method

.method public getCameraISO()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCameraISO()V

    .line 173
    return-void
.end method

.method public getCameraIsoOptions()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCameraIsoOptions()V

    .line 177
    return-void
.end method

.method public getCameraKeyOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "optionKey"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCameraKeyOptions(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "optionKey"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 205
    return-void
.end method

.method public getCameraShutter()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCameraShutter()V

    .line 164
    return-void
.end method

.method public getCameraShutterOptions()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCameraShutterOptions()V

    .line 169
    return-void
.end method

.method public getCurCameraParams(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->getCurCameraParams(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 217
    return-void
.end method

.method public registerJsonCallBackListener(Lcom/fimi/x8sdk/listener/JsonCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/JsonCallBackListener;

    .prologue
    .line 55
    invoke-static {}, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->getNoticeManager()Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->addListener(Lcom/fimi/x8sdk/listener/JsonCallBackListener;)V

    .line 56
    return-void
.end method

.method public removeJsonCallBackListener(Lcom/fimi/x8sdk/listener/JsonCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/JsonCallBackListener;

    .prologue
    .line 59
    invoke-static {}, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->getNoticeManager()Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->removeListener(Lcom/fimi/x8sdk/listener/JsonCallBackListener;)V

    .line 60
    return-void
.end method

.method public setCameraDeControl(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->setCameraDeControl(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 235
    return-void
.end method

.method public setCameraEV(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->setCameraEV(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setCameraFocuse(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->setCameraFocuse(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 222
    return-void
.end method

.method public setCameraIsoParams(Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->setCameraIso(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 209
    return-void
.end method

.method public setCameraShutterParams(Ljava/lang/String;)V
    .locals 1
    .param p1, "shutterTime"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->setCameraShutterTime(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public setCameraSys(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->setCameraSys(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->camAction:Lcom/fimi/x8sdk/ivew/ICamAction;

    check-cast v0, Lcom/fimi/x8sdk/presenter/CameraPresenter;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->setContext(Landroid/content/Context;)V

    .line 45
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    check-cast v0, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/presenter/CameraJsonPresenter;->setContext(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public setInterestMetering(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->setInterestMetering(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setPhotoFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->setPhotoFormat(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setPhotoSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->setPhotoSize(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setVideoResolution(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->setVideoResolution(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public startSession()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->jsonAction:Lcom/fimi/x8sdk/ivew/ICamJsonAction;

    invoke-interface {v0}, Lcom/fimi/x8sdk/ivew/ICamJsonAction;->startSession()V

    .line 51
    return-void
.end method

.method public startVideo(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->camAction:Lcom/fimi/x8sdk/ivew/ICamAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamAction;->startRecord(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 93
    return-void
.end method

.method public stopVideo(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->camAction:Lcom/fimi/x8sdk/ivew/ICamAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamAction;->endRecord(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 103
    return-void
.end method

.method public swithPhotoMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "switchPhotoModeListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->camAction:Lcom/fimi/x8sdk/ivew/ICamAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamAction;->switchPhotoMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 75
    return-void
.end method

.method public swithVideoMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "swithVideoModeListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->camAction:Lcom/fimi/x8sdk/ivew/ICamAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamAction;->swithVideoMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 67
    return-void
.end method

.method public syncCameraTime(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->camAction:Lcom/fimi/x8sdk/ivew/ICamAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamAction;->startRecord(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 213
    return-void
.end method

.method public takePhoto(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/CameraManager;->camAction:Lcom/fimi/x8sdk/ivew/ICamAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/ICamAction;->takePhoto(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 83
    return-void
.end method
