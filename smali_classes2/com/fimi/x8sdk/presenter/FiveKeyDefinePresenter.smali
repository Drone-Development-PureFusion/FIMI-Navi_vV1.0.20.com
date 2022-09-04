.class public Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "FiveKeyDefinePresenter.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IFiveKeyAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;
    }
.end annotation


# instance fields
.field private final CANCEL_PARAMETER_SETTING_INDEX:I

.field private final CONTRASTRATIO_INDEX:I

.field private final SATURATION_INDEX:I

.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private isFiveKeyContrastRatioAdd:Z

.field private isFiveKeySaturationAdd:Z

.field private ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;


# direct methods
.method public constructor <init>(Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 1
    .param p1, "ix8FiveKeyDefine"    # Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;
    .param p2, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->SATURATION_INDEX:I

    .line 26
    const/4 v0, 0x6

    iput v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->CONTRASTRATIO_INDEX:I

    .line 27
    const/16 v0, 0x9

    iput v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->CANCEL_PARAMETER_SETTING_INDEX:I

    .line 37
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    .line 38
    iput-object p2, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 39
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->addNoticeListener()V

    .line 40
    return-void
.end method

.method private fiveKeySwitchUI(IZZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "isLongPress"    # Z
    .param p3, "isAdd"    # Z

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    invoke-interface {v0, p2}, Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;->mapFPVSwitch(Z)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    invoke-interface {v0, p2}, Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;->backCenterDownSwitch(Z)V

    goto :goto_0

    .line 104
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    invoke-interface {v0, p2}, Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;->batteryFrame(Z)V

    goto :goto_0

    .line 106
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    invoke-interface {v0, p2}, Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;->selfCheckFrame(Z)V

    goto :goto_0

    .line 108
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    invoke-interface {v0, p2}, Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;->mediaFrame(Z)V

    goto :goto_0

    .line 110
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 112
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    invoke-interface {v0, p2, p3}, Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;->setSaturation(ZZ)V

    goto :goto_0

    .line 117
    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    .line 119
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    invoke-interface {v0, p2, p3}, Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;->setContrastRatio(ZZ)V

    goto :goto_0

    .line 124
    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    .line 125
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    invoke-interface {v0, p2}, Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;->shootModeSwitch(Z)V

    goto :goto_0

    .line 126
    :cond_8
    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    invoke-interface {v0, p2}, Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;->meteringSwitch(Z)V

    goto :goto_0

    .line 128
    :cond_9
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    invoke-interface {v0}, Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;->cancelParameterSetting()V

    goto :goto_0
.end method


# virtual methods
.method public isSetCameraContrast()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeyContrastRatioAdd:Z

    .line 206
    return-void
.end method

.method public isSetCameraSaturation()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeySaturationAdd:Z

    .line 211
    return-void
.end method

.method public onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/x8sdk/common/BasePresenter;->onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V

    .line 45
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 46
    return-void
.end method

.method protected reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 8
    .param p1, "isAck"    # Z
    .param p2, "group"    # I
    .param p3, "msgId"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p5, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    const/16 v3, 0xb

    if-ne p2, v3, :cond_0

    .line 53
    const/16 v3, 0x10

    if-ne p3, v3, :cond_0

    move-object v0, p4

    .line 54
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;

    .line 55
    .local v0, "ackFiveKeyDefine":Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;
    iget-object v3, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->ix8FiveKeyDefine:Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;

    if-nez v3, :cond_1

    .line 90
    .end local v0    # "ackFiveKeyDefine":Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local v0    # "ackFiveKeyDefine":Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;
    :cond_1
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyIndex()B

    move-result v3

    if-ne v3, v2, :cond_7

    .line 57
    iget-boolean v3, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeySaturationAdd:Z

    if-eqz v3, :cond_3

    .line 58
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyAction()B

    move-result v3

    if-ne v3, v6, :cond_2

    move v1, v2

    :cond_2
    invoke-direct {p0, v5, v1, v2}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->fiveKeySwitchUI(IZZ)V

    goto :goto_0

    .line 59
    :cond_3
    iget-boolean v3, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeyContrastRatioAdd:Z

    if-eqz v3, :cond_5

    .line 60
    const/4 v3, 0x6

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyAction()B

    move-result v4

    if-ne v4, v6, :cond_4

    move v1, v2

    :cond_4
    invoke-direct {p0, v3, v1, v2}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->fiveKeySwitchUI(IZZ)V

    goto :goto_0

    .line 62
    :cond_5
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    sget-object v4, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_UP_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyAction()B

    move-result v4

    if-ne v4, v6, :cond_6

    :goto_1
    invoke-direct {p0, v3, v2, v1}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->fiveKeySwitchUI(IZZ)V

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_1

    .line 64
    :cond_7
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyIndex()B

    move-result v3

    if-ne v3, v6, :cond_d

    .line 66
    iget-boolean v3, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeySaturationAdd:Z

    if-eqz v3, :cond_9

    .line 67
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyAction()B

    move-result v3

    if-ne v3, v6, :cond_8

    :goto_2
    invoke-direct {p0, v5, v2, v1}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->fiveKeySwitchUI(IZZ)V

    goto :goto_0

    :cond_8
    move v2, v1

    goto :goto_2

    .line 68
    :cond_9
    iget-boolean v3, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeyContrastRatioAdd:Z

    if-eqz v3, :cond_b

    .line 69
    const/4 v3, 0x6

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyAction()B

    move-result v4

    if-ne v4, v6, :cond_a

    :goto_3
    invoke-direct {p0, v3, v2, v1}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->fiveKeySwitchUI(IZZ)V

    goto :goto_0

    :cond_a
    move v2, v1

    goto :goto_3

    .line 71
    :cond_b
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    sget-object v4, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_DOWN_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyAction()B

    move-result v4

    if-ne v4, v6, :cond_c

    :goto_4
    invoke-direct {p0, v3, v2, v1}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->fiveKeySwitchUI(IZZ)V

    goto :goto_0

    :cond_c
    move v2, v1

    goto :goto_4

    .line 73
    :cond_d
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyIndex()B

    move-result v3

    if-ne v3, v7, :cond_f

    .line 74
    iget-boolean v3, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeySaturationAdd:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeyContrastRatioAdd:Z

    if-nez v3, :cond_0

    .line 75
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    sget-object v4, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_LEFT_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyAction()B

    move-result v4

    if-ne v4, v6, :cond_e

    :goto_5
    invoke-direct {p0, v3, v2, v1}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->fiveKeySwitchUI(IZZ)V

    goto/16 :goto_0

    :cond_e
    move v2, v1

    goto :goto_5

    .line 76
    :cond_f
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyIndex()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    .line 77
    iget-boolean v3, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeySaturationAdd:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeyContrastRatioAdd:Z

    if-nez v3, :cond_0

    .line 78
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    sget-object v4, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_RIGHT_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyAction()B

    move-result v4

    if-ne v4, v6, :cond_10

    :goto_6
    invoke-direct {p0, v3, v2, v1}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->fiveKeySwitchUI(IZZ)V

    goto/16 :goto_0

    :cond_10
    move v2, v1

    goto :goto_6

    .line 79
    :cond_11
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyIndex()B

    move-result v3

    if-ne v3, v5, :cond_0

    .line 80
    iget-boolean v3, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeyContrastRatioAdd:Z

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeySaturationAdd:Z

    if-nez v3, :cond_13

    .line 81
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    sget-object v4, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_CENTRE_KEY:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyAction()B

    move-result v4

    if-ne v4, v6, :cond_12

    :goto_7
    invoke-direct {p0, v3, v2, v1}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->fiveKeySwitchUI(IZZ)V

    goto/16 :goto_0

    :cond_12
    move v2, v1

    goto :goto_7

    .line 83
    :cond_13
    const/16 v3, 0x9

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckFiveKeyDefine;->getAdckeyAction()B

    move-result v4

    if-ne v4, v6, :cond_14

    :goto_8
    invoke-direct {p0, v3, v2, v1}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->fiveKeySwitchUI(IZZ)V

    goto/16 :goto_0

    :cond_14
    move v2, v1

    goto :goto_8
.end method

.method public restoreUpDownKey(Z)V
    .locals 0
    .param p1, "isRestore"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeySaturationAdd:Z

    .line 200
    iput-boolean p1, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->isFiveKeyContrastRatioAdd:Z

    .line 201
    return-void
.end method

.method public setCameraContrast(Ljava/lang/String;ILcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;
    .locals 2
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "param"    # I
    .param p3, "parameterType"    # Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;
    .param p4, "jsonUiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 147
    const-string v0, ""

    .line 148
    .local v0, "currentParam":Ljava/lang/String;
    sget-object v1, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ADD_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    if-ne p3, v1, :cond_2

    .line 149
    add-int/lit8 p2, p2, 0x1

    .line 153
    :cond_0
    :goto_0
    if-gez p2, :cond_3

    .line 154
    const/4 p2, 0x0

    .line 158
    :cond_1
    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0, p1, v0, p4}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 160
    return-object v0

    .line 150
    :cond_2
    sget-object v1, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->DECREASE_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    if-ne p3, v1, :cond_0

    .line 151
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 155
    :cond_3
    const/16 v1, 0x100

    if-le p2, v1, :cond_1

    .line 156
    const/16 p2, 0x100

    goto :goto_1
.end method

.method public setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V
    .locals 1
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "jsonUiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v0, p2, p1, p3}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 143
    return-void
.end method

.method public setCameraSaturation(Ljava/lang/String;ILcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;
    .locals 2
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "param"    # I
    .param p3, "parameterType"    # Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;
    .param p4, "jsonUiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 165
    const-string v0, ""

    .line 166
    .local v0, "currentParam":Ljava/lang/String;
    sget-object v1, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ADD_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    if-ne p3, v1, :cond_2

    .line 167
    add-int/lit8 p2, p2, 0x1

    .line 172
    :cond_0
    :goto_0
    if-gez p2, :cond_3

    .line 173
    const/4 p2, 0x0

    .line 177
    :cond_1
    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p0, p1, v0, p4}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 179
    return-object v0

    .line 168
    :cond_2
    sget-object v1, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->DECREASE_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    if-ne p3, v1, :cond_0

    .line 169
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 174
    :cond_3
    const/16 v1, 0x100

    if-le p2, v1, :cond_1

    .line 175
    const/16 p2, 0x100

    goto :goto_1
.end method

.method public setFiveKeyCameraKeyParams(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)Ljava/lang/String;
    .locals 3
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;
    .param p3, "currentParams"    # Ljava/lang/String;
    .param p4, "jsonUiCallBackListener"    # Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 186
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    add-int/lit8 v0, v1, 0x1

    .line 188
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p4}, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 194
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
