.class public Lcom/fimi/x8sdk/presenter/FcPresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "FcPresenter.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IFcAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->addNoticeListener()V

    .line 29
    return-void
.end method


# virtual methods
.method public getAiFollowModle(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 320
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 321
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getAiFollowModle()Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 322
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 323
    return-void
.end method

.method public getAiFollowPoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 90
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 91
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x35

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowPoint2PointExcute(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 92
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 93
    return-void
.end method

.method public getAiFollowSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 334
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 335
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getAiFollowSpeed()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 336
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 337
    return-void
.end method

.method public getAiLinePoint(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "number"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 206
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 207
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->getAiLinePoint(I)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 208
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 209
    return-void
.end method

.method public getAiLinePointValue(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "number"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 220
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 221
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->getAiLinePointsAction(I)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 222
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 223
    return-void
.end method

.method public getAiSurroundCiclePoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 126
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 127
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getAiSurroundPoint()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 128
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 129
    return-void
.end method

.method public getAiSurroundOrientation(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 157
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 158
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getAiSurroundOrientation()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 159
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 160
    return-void
.end method

.method public getAiSurroundSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 150
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 151
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getAiSurroundSpeed()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 152
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 153
    return-void
.end method

.method public getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "moduleName"    # B
    .param p2, "type"    # B
    .param p3, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 71
    new-instance v0, Lcom/fimi/x8sdk/command/FwUpdateCollection;

    invoke-direct {v0, p0, p3}, Lcom/fimi/x8sdk/command/FwUpdateCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0, p1, p2}, Lcom/fimi/x8sdk/command/FwUpdateCollection;->getVersion(BB)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 72
    return-void
.end method

.method public getGravitationPrameter(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 350
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 351
    .local v1, "fcCollection":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getGravitationPrameter()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 352
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 353
    return-void
.end method

.method public getNoFlyNormal(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 455
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 456
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getNoFlyNormal()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 457
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 458
    return-void
.end method

.method public getScrewPrameter(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 399
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 400
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->getScrewPrameter()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 401
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 402
    return-void
.end method

.method public land(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 44
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->land(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 45
    return-void
.end method

.method public landExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 49
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->land(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 51
    return-void
.end method

.method public onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 252
    return-void
.end method

.method public onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 256
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/FcPresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 257
    return-void
.end method

.method public onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 262
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/FcPresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 263
    return-void
.end method

.method public onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 246
    return-void
.end method

.method protected reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "isAck"    # Z
    .param p2, "groupId"    # I
    .param p3, "msgId"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p5, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 267
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 269
    const/16 v0, 0x67

    if-ne p3, v0, :cond_1

    .line 270
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcPresenter;->onNormalResponseWithParamForNav2Screw(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const/16 v0, 0x24

    if-ne p3, v0, :cond_2

    .line 272
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcPresenter;->onNormalResponseWithParamForNav(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcPresenter;->onNormalResponseWithParamForNav(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 276
    :cond_3
    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    .line 277
    const/16 v0, 0xb1

    if-ne v0, p3, :cond_0

    .line 278
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/FcPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0
.end method

.method public setAiAutoPhotoExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 227
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 228
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiAutoPhotoExcute()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 229
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 230
    return-void
.end method

.method public setAiAutoPhotoExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 234
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 235
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiAutoPhotoExit()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 236
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 237
    return-void
.end method

.method public setAiAutoPhotoValue(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "v"    # Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 213
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 214
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiAutoPhotoValue(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    .line 215
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 216
    return-void
.end method

.method public setAiFollowModle(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 313
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 314
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowModle(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 315
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 316
    return-void
.end method

.method public setAiFollowPoint2Point(DDIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 11
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .param p5, "altitude"    # I
    .param p6, "speed"    # I
    .param p7, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 76
    new-instance v3, Lcom/fimi/x8sdk/command/FcCollection;

    move-object/from16 v0, p7

    invoke-direct {v3, p0, v0}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .local v3, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    .line 77
    invoke-virtual/range {v3 .. v9}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowPoint2Point(DDII)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v2

    .line 78
    .local v2, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v2}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 79
    return-void
.end method

.method public setAiFollowPoint2PointExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 83
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 84
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowPoint2PointExcute(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 85
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 86
    return-void
.end method

.method public setAiFollowPoint2PointExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 97
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 98
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowPoint2PointExcute(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 99
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 100
    return-void
.end method

.method public setAiFollowSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 327
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 328
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowSpeed(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 329
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 330
    return-void
.end method

.method public setAiLineExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 192
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 193
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiLineExcute()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 194
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 195
    return-void
.end method

.method public setAiLineExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 199
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 200
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiLineExite()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 201
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 202
    return-void
.end method

.method public setAiLinePoints(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "points"    # Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 178
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 179
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiLinePoints(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 180
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 181
    return-void
.end method

.method public setAiLinePointsAction(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "action"    # Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 185
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 186
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiLinePointsAction(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 187
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 188
    return-void
.end method

.method public setAiRetureHome(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 164
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 165
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAiRetureHome(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 166
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 167
    return-void
.end method

.method public setAiRetureHomeExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 171
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 172
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAiRetureHome(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 173
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 174
    return-void
.end method

.method public setAiSurroundCiclePoint(DDFDDFILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 15
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .param p5, "altitude"    # F
    .param p6, "longitudeTakeoff"    # D
    .param p8, "latitudeTakeoff"    # D
    .param p10, "altitudeTakeoff"    # F
    .param p11, "type"    # I
    .param p12, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 119
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    move-object/from16 v0, p12

    invoke-direct {v1, p0, v0}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 120
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x44

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Lcom/fimi/x8sdk/command/FcCollection;->setAiSurroundPoint(IDDFDDFI)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v14

    .line 121
    .local v14, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v14}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 122
    return-void
.end method

.method public setAiSurroundExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 104
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 105
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAiSurroundExcute(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 106
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 107
    return-void
.end method

.method public setAiSurroundExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 111
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 112
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x43

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAiSurroundExcute(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 113
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 114
    return-void
.end method

.method public setAiSurroundOrientation(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 142
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 143
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x48

    invoke-virtual {v1, v2, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiSurroundOrientation(BI)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 144
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 146
    return-void
.end method

.method public setAiSurroundSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 134
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 135
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x46

    invoke-virtual {v1, v2, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiSurroundSpeed(BI)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 136
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 138
    return-void
.end method

.method public setAiVcClose(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 299
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 300
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowVcEnable(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 301
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 302
    return-void
.end method

.method public setAiVcNotityFc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 306
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 307
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x62

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowVcEnable(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 308
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 309
    return-void
.end method

.method public setAiVcOpen(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 292
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 293
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowVcEnable(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 294
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 295
    return-void
.end method

.method public setFollowExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 61
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowCmd(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 62
    return-void
.end method

.method public setFollowExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 66
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowCmd(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 67
    return-void
.end method

.method public setFollowStandby(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 55
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->setAiFollowCmd(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 56
    return-void
.end method

.method public setGpsInfo(Lcom/fimi/x8sdk/entity/GpsInfoCmd;)V
    .locals 3
    .param p1, "gps"    # Lcom/fimi/x8sdk/entity/GpsInfoCmd;

    .prologue
    .line 448
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 449
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setGpsInfo(Lcom/fimi/x8sdk/entity/GpsInfoCmd;)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 450
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 451
    return-void
.end method

.method public setGravitationExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 378
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 379
    .local v1, "fcCollection":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setGravitationExite()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 380
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 381
    return-void
.end method

.method public setGravitationPause(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 364
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 365
    .local v1, "fcCollection":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setGravitationPause()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 366
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 367
    return-void
.end method

.method public setGravitationPrameter(Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "prameter"    # Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 385
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 386
    .local v1, "fcCollection":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setGravitationPrameter(Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 387
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 388
    return-void
.end method

.method public setGravitationResume(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 371
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 372
    .local v1, "fcCollection":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setGravitationResume()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 373
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 374
    return-void
.end method

.method public setGravitationStart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 357
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 358
    .local v1, "fcCollection":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setGravitationStart()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 359
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 360
    return-void
.end method

.method public setHomePoint(FDDIFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 12
    .param p1, "h"    # F
    .param p2, "lat"    # D
    .param p4, "lng"    # D
    .param p6, "mode"    # I
    .param p7, "accuracy"    # F
    .param p8, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 343
    new-instance v2, Lcom/fimi/x8sdk/command/FcCollection;

    move-object/from16 v0, p8

    invoke-direct {v2, p0, v0}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .local v2, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 344
    invoke-virtual/range {v2 .. v9}, Lcom/fimi/x8sdk/command/FcCollection;->setHomePoint(FDDIF)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v10

    .line 345
    .local v10, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v10}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 346
    return-void
.end method

.method public setPressureInfo(FF)V
    .locals 3
    .param p1, "alt"    # F
    .param p2, "hPa"    # F

    .prologue
    .line 441
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 442
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->setPressureInfo(FF)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 443
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 444
    return-void
.end method

.method public setScrewExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 427
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 428
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setScrewExite()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 429
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 430
    return-void
.end method

.method public setScrewPause(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 413
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 414
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setScrewPause()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 415
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 416
    return-void
.end method

.method public setScrewPrameter(Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "prameter"    # Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 392
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p2}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 393
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/command/FcCollection;->setScrewPrameter(Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 394
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 395
    return-void
.end method

.method public setScrewResume(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 420
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 421
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setScrewResume()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 422
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 423
    return-void
.end method

.method public setScrewStart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 406
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 407
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setScrewStart()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 408
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 409
    return-void
.end method

.method public syncTime(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 285
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 286
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/command/FcCollection;->setSyncTimeCmd()Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 287
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 288
    return-void
.end method

.method public sysCtrlMode2AiVc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "ctrlMode"    # I

    .prologue
    .line 434
    new-instance v1, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v1, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 435
    .local v1, "fc":Lcom/fimi/x8sdk/command/FcCollection;
    invoke-virtual {v1, p2}, Lcom/fimi/x8sdk/command/FcCollection;->sysCtrlMode2AiVc(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    .line 436
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 437
    return-void
.end method

.method public takeOff(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 34
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->takeOff(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 35
    return-void
.end method

.method public takeOffExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 39
    new-instance v0, Lcom/fimi/x8sdk/command/FcCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/FcCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/command/FcCollection;->takeOff(B)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 40
    return-void
.end method
