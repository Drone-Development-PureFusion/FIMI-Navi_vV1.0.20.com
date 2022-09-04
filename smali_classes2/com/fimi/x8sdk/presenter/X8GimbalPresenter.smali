.class public Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "X8GimbalPresenter.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IGbAciton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->addNoticeListener()V

    .line 24
    return-void
.end method


# virtual methods
.method public getGcGain(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 112
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 113
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->fetchGcGain()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 114
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 115
    return-void
.end method

.method public getGcParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 77
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 78
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getGcParams()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 79
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 80
    return-void
.end method

.method public getGcParamsNew(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 91
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 92
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getGcParamsNew()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 93
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 94
    return-void
.end method

.method public getGimbalSensorInfo(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 28
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 29
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getGimbalSensorInfoCmd()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 30
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 31
    return-void
.end method

.method public getHorizontalAdjust(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 49
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 50
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getHorizontalAdjust()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 51
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 52
    return-void
.end method

.method public getPitchSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 63
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 64
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->getPitchSpeed()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 65
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 66
    return-void
.end method

.method public onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 120
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 121
    return-void
.end method

.method public onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 125
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 126
    return-void
.end method

.method protected reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 8
    .param p1, "isAck"    # Z
    .param p2, "groupId"    # I
    .param p3, "msgId"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p5, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 131
    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    .line 132
    sparse-switch p3, :sswitch_data_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 134
    :sswitch_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 137
    :sswitch_1
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 140
    :sswitch_2
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 143
    :sswitch_3
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 146
    :sswitch_4
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 149
    :sswitch_5
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 152
    :sswitch_6
    if-eqz p1, :cond_0

    invoke-virtual {p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p4

    .line 153
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;

    .line 154
    .local v0, "horizontalAdjust":Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;->getMsgRpt()I

    move-result v2

    if-nez v2, :cond_1

    .line 155
    invoke-virtual {p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v2

    new-instance v3, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v3, v6, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;->getAngle()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v2

    new-instance v3, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-direct {v3, v5, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v2, v3, v7}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    .end local v0    # "horizontalAdjust":Lcom/fimi/x8sdk/dataparser/AckGetHorizontalAdjust;
    :sswitch_7
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->onErrorResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 165
    :sswitch_8
    if-eqz p1, :cond_0

    invoke-virtual {p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p4

    .line 166
    check-cast v1, Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;

    .line 167
    .local v1, "pitchSpeed":Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;->getMsgRpt()I

    move-result v2

    if-nez v2, :cond_2

    .line 168
    invoke-virtual {p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v2

    new-instance v3, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v3, v6, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v2, v3, v1}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v2

    new-instance v3, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-direct {v3, v5, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v2, v3, v7}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 175
    .end local v1    # "pitchSpeed":Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;
    :sswitch_9
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto/16 :goto_0

    .line 178
    :sswitch_a
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto/16 :goto_0

    .line 181
    :sswitch_b
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto/16 :goto_0

    .line 184
    :sswitch_c
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto/16 :goto_0

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x1c -> :sswitch_5
        0x1d -> :sswitch_4
        0x1e -> :sswitch_9
        0x1f -> :sswitch_a
        0x28 -> :sswitch_7
        0x29 -> :sswitch_8
        0x2a -> :sswitch_1
        0x2b -> :sswitch_6
        0x2f -> :sswitch_b
        0x60 -> :sswitch_c
        0x69 -> :sswitch_3
        0x6a -> :sswitch_2
    .end sparse-switch
.end method

.method public restGcSystemParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 70
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 71
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->restGcParams()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 72
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 73
    return-void
.end method

.method public setAiAutoPhotoPitchAngle(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "angle"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 35
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 36
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->setAiAutoPhotoPitchAngle(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 37
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 38
    return-void
.end method

.method public setGcGain(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "data0"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 105
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 106
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->setGcGain(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 107
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 108
    return-void
.end method

.method public setGcParams(IFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "params"    # F
    .param p3, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 84
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p3}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 85
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1, p1, p2}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->setGcParams(IF)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 86
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 87
    return-void
.end method

.method public setGcParamsNew(IFFFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "model"    # I
    .param p2, "param1"    # F
    .param p3, "param2"    # F
    .param p4, "param3"    # F
    .param p5, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 98
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p5}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 99
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->setGcParamsNew(IFFF)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 100
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 101
    return-void
.end method

.method public setHorizontalAdjust(FLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "angle"    # F
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 42
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 43
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->setHorizontalAdjust(F)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 44
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 45
    return-void
.end method

.method public setPitchSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "speed"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 56
    new-instance v1, Lcom/fimi/x8sdk/command/X8GimbalCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/X8GimbalCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 57
    .local v1, "gc":Lcom/fimi/x8sdk/command/X8GimbalCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/X8GimbalCollection;->setPitchSpeed(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 58
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8GimbalPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 59
    return-void
.end method
