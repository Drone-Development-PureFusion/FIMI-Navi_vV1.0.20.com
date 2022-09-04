.class public Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;
.super Ljava/lang/Object;
.source "FiveKeyDefineManager.java"


# instance fields
.field fiveKeyDefinePresenter:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;

.field iFiveKeyAction:Lcom/fimi/x8sdk/ivew/IFiveKeyAction;


# direct methods
.method public constructor <init>(Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 1
    .param p1, "ix8FiveKeyDefine"    # Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;
    .param p2, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;

    invoke-direct {v0, p1, p2}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;-><init>(Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;Lcom/fimi/x8sdk/controller/CameraManager;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->iFiveKeyAction:Lcom/fimi/x8sdk/ivew/IFiveKeyAction;

    .line 19
    return-void
.end method


# virtual methods
.method public isSetCameraContrast()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->iFiveKeyAction:Lcom/fimi/x8sdk/ivew/IFiveKeyAction;

    invoke-interface {v0}, Lcom/fimi/x8sdk/ivew/IFiveKeyAction;->isSetCameraContrast()V

    .line 64
    return-void
.end method

.method public isSetCameraSaturation()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->iFiveKeyAction:Lcom/fimi/x8sdk/ivew/IFiveKeyAction;

    invoke-interface {v0}, Lcom/fimi/x8sdk/ivew/IFiveKeyAction;->isSetCameraSaturation()V

    .line 68
    return-void
.end method

.method public restoreUpDownKey(Z)V
    .locals 1
    .param p1, "isRestore"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->iFiveKeyAction:Lcom/fimi/x8sdk/ivew/IFiveKeyAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFiveKeyAction;->restoreUpDownKey(Z)V

    .line 60
    return-void
.end method

.method public setCameraContrast(Ljava/lang/String;ILcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;
    .locals 1
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "param"    # I
    .param p3, "parameterType"    # Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;
    .param p4, "jsonUiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->iFiveKeyAction:Lcom/fimi/x8sdk/ivew/IFiveKeyAction;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fimi/x8sdk/ivew/IFiveKeyAction;->setCameraContrast(Ljava/lang/String;ILcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCameraSaturation(Ljava/lang/String;ILcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;
    .locals 1
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "param"    # I
    .param p3, "parameterType"    # Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;
    .param p4, "jsonUiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->iFiveKeyAction:Lcom/fimi/x8sdk/ivew/IFiveKeyAction;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fimi/x8sdk/ivew/IFiveKeyAction;->setCameraSaturation(Ljava/lang/String;ILcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFiveKeyCameraKeyParams(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;
    .locals 1
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;
    .param p3, "currentMeteringMode"    # Ljava/lang/String;
    .param p4, "jsonUiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FiveKeyDefineManager;->iFiveKeyAction:Lcom/fimi/x8sdk/ivew/IFiveKeyAction;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fimi/x8sdk/ivew/IFiveKeyAction;->setFiveKeyCameraKeyParams(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
