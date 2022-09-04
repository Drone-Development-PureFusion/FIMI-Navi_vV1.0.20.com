.class public Lcom/fimi/x8sdk/presenter/X8VcPresenter;
.super Lcom/fimi/x8sdk/common/BasePresenter;
.source "X8VcPresenter.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IVcAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fimi/x8sdk/common/BasePresenter;-><init>()V

    .line 15
    invoke-virtual {p0}, Lcom/fimi/x8sdk/presenter/X8VcPresenter;->addNoticeListener()V

    .line 16
    return-void
.end method


# virtual methods
.method public onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 41
    return-void
.end method

.method public onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 45
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/X8VcPresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 46
    return-void
.end method

.method public onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 50
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/presenter/X8VcPresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 51
    return-void
.end method

.method public onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 35
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
    .line 55
    const/16 v0, 0xf

    if-ne p2, v0, :cond_0

    .line 56
    packed-switch p3, :pswitch_data_0

    .line 61
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8VcPresenter;->onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 58
    :pswitch_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/fimi/x8sdk/presenter/X8VcPresenter;->onNormalResponse(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setVcFpvLostSeq(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "seq"    # I

    .prologue
    .line 29
    new-instance v0, Lcom/fimi/x8sdk/command/X8VisionCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/X8VisionCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/command/X8VisionCollection;->setVcFpvLostSeq(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8VcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 30
    return-void
.end method

.method public setVcFpvMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "mode"    # I

    .prologue
    .line 24
    new-instance v0, Lcom/fimi/x8sdk/command/X8VisionCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/X8VisionCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/command/X8VisionCollection;->setVcFpvMode(I)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8VcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 25
    return-void
.end method

.method public setVcRectF(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;IIIII)V
    .locals 6
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "classfier"    # I

    .prologue
    .line 19
    new-instance v0, Lcom/fimi/x8sdk/command/X8VisionCollection;

    invoke-direct {v0, p0, p1}, Lcom/fimi/x8sdk/command/X8VisionCollection;-><init>(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/command/X8VisionCollection;->setVcRectF(IIIII)Lcom/fimi/x8sdk/command/X8SendCmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/presenter/X8VcPresenter;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 21
    return-void
.end method
