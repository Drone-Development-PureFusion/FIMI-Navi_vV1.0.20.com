.class public Lcom/fimi/x8sdk/presenter/CameraPresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "CameraPresenter.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/ICamAction;


# instance fields
.field private tfCardStateListener:Lcom/fimi/x8sdk/listener/CallBackParamListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->addNoticeListener()V

    .line 31
    return-void
.end method


# virtual methods
.method public endRecord(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "endRecordListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 46
    new-instance v0, Lcom/fimi/x8sdk/command/CameraCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/CameraCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraCollection;->stopRecord()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 47
    return-void
.end method

.method public getTFCardState(Lcom/fimi/x8sdk/listener/CallBackParamListener;)V
    .locals 0
    .param p1, "tfStateListener"    # Lcom/fimi/x8sdk/listener/CallBackParamListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/CameraPresenter;->tfCardStateListener:Lcom/fimi/x8sdk/listener/CallBackParamListener;

    .line 52
    return-void
.end method

.method public onCameraTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 185
    if-ne p1, v4, :cond_2

    .line 186
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 188
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    invoke-direct {v1, v2, v2}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v0, v1, v3}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 193
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 194
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    invoke-direct {v1, v2, v2}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v0, v1, v3}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 198
    :cond_1
    if-ne p2, v4, :cond_2

    .line 199
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    invoke-direct {v1, v2, v2}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v0, v1, v3}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 205
    :cond_2
    return-void
.end method

.method public onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/x8sdk/common/BasePresenter;->onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V

    .line 80
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 82
    return-void
.end method

.method public onNormalResponse(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 5
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v4, 0x0

    .line 175
    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v2, 0x1

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v0, v1, v4}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v2, 0x0

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_timeout:I

    invoke-direct {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v0, v1, v4}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 85
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 86
    return-void
.end method

.method public onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->onCameraTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V

    .line 91
    return-void
.end method

.method public onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/x8sdk/common/BasePresenter;->onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V

    .line 75
    return-void
.end method

.method protected reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 12
    .param p1, "isAck"    # Z
    .param p2, "groupId"    # I
    .param p3, "msgId"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p5, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 93
    const/4 v7, 0x2

    if-ne p2, v7, :cond_6

    .line 94
    const/4 v7, 0x4

    if-ne p3, v7, :cond_0

    move-object/from16 v5, p4

    .line 95
    check-cast v5, Lcom/fimi/x8sdk/dataparser/AckTakePhoto;

    .line 96
    .local v5, "takePhoto":Lcom/fimi/x8sdk/dataparser/AckTakePhoto;
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    invoke-virtual {v5}, Lcom/fimi/x8sdk/dataparser/AckTakePhoto;->getMsgRpt()I

    move-result v7

    if-nez v7, :cond_7

    .line 98
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 105
    .end local v5    # "takePhoto":Lcom/fimi/x8sdk/dataparser/AckTakePhoto;
    :cond_0
    :goto_0
    const/4 v7, 0x2

    if-ne p3, v7, :cond_1

    move-object/from16 v3, p4

    .line 106
    check-cast v3, Lcom/fimi/x8sdk/dataparser/AckStartRecord;

    .line 107
    .local v3, "ackStartRecord":Lcom/fimi/x8sdk/dataparser/AckStartRecord;
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 108
    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckStartRecord;->getMsgRpt()I

    move-result v7

    if-nez v7, :cond_8

    .line 109
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 116
    .end local v3    # "ackStartRecord":Lcom/fimi/x8sdk/dataparser/AckStartRecord;
    :cond_1
    :goto_1
    const/4 v7, 0x3

    if-ne p3, v7, :cond_2

    move-object/from16 v4, p4

    .line 117
    check-cast v4, Lcom/fimi/x8sdk/dataparser/AckStopRecord;

    .line 118
    .local v4, "ackStopRecord":Lcom/fimi/x8sdk/dataparser/AckStopRecord;
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckStopRecord;->getMsgRpt()I

    move-result v7

    if-nez v7, :cond_9

    .line 120
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 127
    .end local v4    # "ackStopRecord":Lcom/fimi/x8sdk/dataparser/AckStopRecord;
    :cond_2
    :goto_2
    const/16 v7, 0xb

    if-ne p3, v7, :cond_3

    move-object/from16 v2, p4

    .line 128
    check-cast v2, Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;

    .line 129
    .local v2, "ackCameraVideoMode":Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 130
    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;->getMsgRpt()I

    move-result v7

    if-nez v7, :cond_a

    .line 131
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 138
    .end local v2    # "ackCameraVideoMode":Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;
    :cond_3
    :goto_3
    const/16 v7, 0xc

    if-ne p3, v7, :cond_4

    move-object/from16 v0, p4

    .line 139
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;

    .line 140
    .local v0, "ackCameraInterestMetering":Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 141
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;->getMsgRpt()I

    move-result v7

    if-nez v7, :cond_b

    .line 142
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 149
    .end local v0    # "ackCameraInterestMetering":Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;
    :cond_4
    :goto_4
    const/16 v7, 0xa

    if-ne p3, v7, :cond_5

    move-object/from16 v1, p4

    .line 150
    check-cast v1, Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;

    .line 151
    .local v1, "ackCameraPhotoMode":Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 152
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;->getMsgRpt()I

    move-result v7

    if-nez v7, :cond_c

    .line 153
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 160
    .end local v1    # "ackCameraPhotoMode":Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;
    :cond_5
    :goto_5
    const/16 v7, 0x8

    if-ne p3, v7, :cond_6

    move-object/from16 v6, p4

    .line 161
    check-cast v6, Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;

    .line 162
    .local v6, "tfCarddCap":Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/CameraPresenter;->tfCardStateListener:Lcom/fimi/x8sdk/listener/CallBackParamListener;

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 163
    invoke-virtual {v6}, Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;->getMsgRpt()I

    move-result v7

    if-nez v7, :cond_d

    .line 164
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/CameraPresenter;->tfCardStateListener:Lcom/fimi/x8sdk/listener/CallBackParamListener;

    const/4 v8, 0x1

    invoke-virtual {v6}, Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;->getTfCardCap()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/fimi/x8sdk/listener/CallBackParamListener;->callbackResult(ZLjava/lang/Object;)V

    .line 173
    .end local v6    # "tfCarddCap":Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;
    :cond_6
    :goto_6
    return-void

    .line 100
    .restart local v5    # "takePhoto":Lcom/fimi/x8sdk/dataparser/AckTakePhoto;
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/fimi/x8sdk/dataparser/AckTakePhoto;->getMsgRpt()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 111
    .end local v5    # "takePhoto":Lcom/fimi/x8sdk/dataparser/AckTakePhoto;
    .restart local v3    # "ackStartRecord":Lcom/fimi/x8sdk/dataparser/AckStartRecord;
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/fimi/x8sdk/dataparser/AckStartRecord;->getMsgRpt()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 122
    .end local v3    # "ackStartRecord":Lcom/fimi/x8sdk/dataparser/AckStartRecord;
    .restart local v4    # "ackStopRecord":Lcom/fimi/x8sdk/dataparser/AckStopRecord;
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4}, Lcom/fimi/x8sdk/dataparser/AckStopRecord;->getMsgRpt()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 133
    .end local v4    # "ackStopRecord":Lcom/fimi/x8sdk/dataparser/AckStopRecord;
    .restart local v2    # "ackCameraVideoMode":Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;
    :cond_a
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;->getMsgRpt()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 144
    .end local v2    # "ackCameraVideoMode":Lcom/fimi/x8sdk/dataparser/AckCameraVideoMode;
    .restart local v0    # "ackCameraInterestMetering":Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;
    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;->getMsgRpt()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 155
    .end local v0    # "ackCameraInterestMetering":Lcom/fimi/x8sdk/dataparser/AckCameraInterestMetering;
    .restart local v1    # "ackCameraPhotoMode":Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;
    :cond_c
    invoke-virtual/range {p4 .. p4}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;->getMsgRpt()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 166
    .end local v1    # "ackCameraPhotoMode":Lcom/fimi/x8sdk/dataparser/AckCameraPhotoMode;
    .restart local v6    # "tfCarddCap":Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;
    :cond_d
    iget-object v7, p0, Lcom/fimi/x8sdk/presenter/CameraPresenter;->tfCardStateListener:Lcom/fimi/x8sdk/listener/CallBackParamListener;

    const/4 v8, 0x0

    invoke-virtual {v6}, Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;->getTfCardCap()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/fimi/x8sdk/listener/CallBackParamListener;->callbackResult(ZLjava/lang/Object;)V

    goto/16 :goto_6
.end method

.method public setInterestMetering(BLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "meteringIndex"    # B
    .param p2, "setInterestMeteringListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 66
    new-instance v0, Lcom/fimi/x8sdk/command/CameraCollection;

    invoke-direct {v0, p0, p2}, Lcom/fimi/x8sdk/command/CameraCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/command/CameraCollection;->setInterestMetering(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 67
    return-void
.end method

.method public startRecord(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "startRecordListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 40
    new-instance v0, Lcom/fimi/x8sdk/command/CameraCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/CameraCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraCollection;->startRecord()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 41
    return-void
.end method

.method public switchPhotoMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "switchPhotoModeListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 61
    new-instance v0, Lcom/fimi/x8sdk/command/CameraCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/CameraCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraCollection;->switchPhotoMode()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 62
    return-void
.end method

.method public swithVideoMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "swithVideoModeListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 56
    new-instance v0, Lcom/fimi/x8sdk/command/CameraCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/CameraCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraCollection;->switchVideoMode()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 57
    return-void
.end method

.method public takePhoto(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "takePhotoListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 34
    new-instance v0, Lcom/fimi/x8sdk/command/CameraCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/CameraCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/command/CameraCollection;->takePhoto()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/CameraPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 35
    return-void
.end method
