.class public abstract Lcom/fimi/x8sdk/common/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"

# interfaces
.implements Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;
.implements Lcom/fimi/kernel/connect/interfaces/IDataCallBack;


# static fields
.field public static final ERR:I = -0x1

.field public static final SUCCESS:I


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNoticeListener()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/connect/session/NoticeManager;->add2NoticeList(Lcom/fimi/kernel/connect/interfaces/IDataCallBack;)V

    .line 36
    return-void
.end method

.method public addNoticeListener(Lcom/fimi/kernel/connect/session/JsonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/connect/session/JsonListener;

    .prologue
    .line 47
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/fimi/kernel/connect/session/NoticeManager;->add2NoticeList(Lcom/fimi/kernel/connect/interfaces/IDataCallBack;Lcom/fimi/kernel/connect/session/JsonListener;)V

    .line 49
    return-void
.end method

.method public addNoticeListener(Lcom/fimi/kernel/connect/session/UpdateDateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/connect/session/UpdateDateListener;

    .prologue
    .line 43
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/fimi/kernel/connect/session/NoticeManager;->add2NoticeList(Lcom/fimi/kernel/connect/interfaces/IDataCallBack;Lcom/fimi/kernel/connect/session/UpdateDateListener;)V

    .line 44
    return-void
.end method

.method public addNoticeListener(Lcom/fimi/kernel/connect/session/VideodDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/connect/session/VideodDataListener;

    .prologue
    .line 39
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/fimi/kernel/connect/session/NoticeManager;->add2NoticeList(Lcom/fimi/kernel/connect/interfaces/IDataCallBack;Lcom/fimi/kernel/connect/session/VideodDataListener;)V

    .line 40
    return-void
.end method

.method protected isNotNull(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 64
    return-void
.end method

.method public onErrorResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 5
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v4, 0x0

    .line 136
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/common/BasePresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    invoke-interface {v0, v4, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 141
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

.method public onNormalFormatResonse(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 4
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 95
    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/common/BasePresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v2, 0x1

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v0, v1, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v2, 0x0

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_timeout:I

    invoke-direct {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNormalResponse(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 5
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v4, 0x0

    .line 105
    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/common/BasePresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v2, 0x1

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v0, v1, v4}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 110
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

.method public onNormalResponseWithParam(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v5, 0x0

    .line 115
    if-eqz p1, :cond_3

    .line 116
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/common/BasePresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v1

    if-nez v1, :cond_1

    .line 119
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v3, 0x1

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v2, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v1

    const/16 v2, 0x45

    if-eq v1, v2, :cond_2

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 127
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v4

    invoke-direct {v2, v5, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_timeout:I

    invoke-direct {v2, v5, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNormalResponseWithParamForFCCTRL(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v5, 0x0

    .line 146
    if-eqz p1, :cond_3

    .line 147
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/common/BasePresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v1

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v3, 0x1

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v2, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/fimi/x8sdk/rtp/X8Rtp;->getRtpStringFcCtrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 158
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v4

    invoke-direct {v2, v5, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_timeout:I

    invoke-direct {v2, v5, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNormalResponseWithParamForGimbal(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v5, 0x0

    .line 206
    if-eqz p1, :cond_3

    .line 207
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/common/BasePresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v1

    if-nez v1, :cond_1

    .line 210
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v3, 0x1

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v2, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 216
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v4

    invoke-direct {v2, v5, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_timeout:I

    invoke-direct {v2, v5, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNormalResponseWithParamForMaintenance(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v5, 0x0

    .line 168
    if-eqz p1, :cond_3

    .line 169
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/common/BasePresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v1

    if-nez v1, :cond_1

    .line 172
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v3, 0x1

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v2, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 178
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v4

    invoke-direct {v2, v5, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_timeout:I

    invoke-direct {v2, v5, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNormalResponseWithParamForNav(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v5, 0x0

    .line 244
    if-eqz p1, :cond_3

    .line 245
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/common/BasePresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v1

    if-nez v1, :cond_1

    .line 248
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v3, 0x1

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v2, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/fimi/x8sdk/rtp/X8Rtp;->getFcNavString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 256
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v4

    invoke-direct {v2, v5, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_timeout:I

    invoke-direct {v2, v5, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNormalResponseWithParamForNav2Screw(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v5, 0x0

    .line 265
    if-eqz p1, :cond_3

    .line 266
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/common/BasePresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v1

    if-nez v1, :cond_1

    .line 269
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v3, 0x1

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v2, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/fimi/x8sdk/rtp/X8Rtp;->getFcNavString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 277
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v4

    invoke-direct {v2, v5, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_timeout:I

    invoke-direct {v2, v5, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNormalResponseWithParamForTelemetry(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v5, 0x0

    .line 187
    if-eqz p1, :cond_3

    .line 188
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/common/BasePresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v1

    if-nez v1, :cond_1

    .line 191
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v3, 0x1

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v2, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 197
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v4

    invoke-direct {v2, v5, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_timeout:I

    invoke-direct {v2, v5, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNormalResponseWithParamWithRcCTRL(ZLcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 6
    .param p1, "isAck"    # Z
    .param p2, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/4 v5, 0x0

    .line 225
    if-eqz p1, :cond_3

    .line 226
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/common/BasePresenter;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v1

    if-nez v1, :cond_1

    .line 229
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    const/4 v3, 0x1

    sget v4, Lcom/fimi/x8sdk/R$string;->cmd_success:I

    invoke-direct {v2, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 235
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_fail:I

    invoke-virtual {p2}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v4

    invoke-direct {v2, v5, v3, v4}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZII)V

    invoke-interface {v1, v2, p2}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    :cond_3
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/dataparser/usb/CmdResult;

    sget v3, Lcom/fimi/x8sdk/R$string;->cmd_timeout:I

    invoke-direct {v2, v5, v3}, Lcom/fimi/kernel/dataparser/usb/CmdResult;-><init>(ZI)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 73
    return-void
.end method

.method public onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 78
    return-void
.end method

.method public onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 69
    return-void
.end method

.method public removeFpvListener()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/session/NoticeManager;->removeFpvListener()V

    .line 60
    return-void
.end method

.method public removeNoticeListener()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/connect/session/NoticeManager;->removeNoticeList(Lcom/fimi/kernel/connect/interfaces/IDataCallBack;)V

    .line 56
    return-void
.end method

.method protected reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "isAck"    # Z
    .param p2, "group"    # I
    .param p3, "msgId"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p5, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 92
    return-void
.end method

.method public sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/session/SessionManager;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fimi/x8sdk/common/BasePresenter;->context:Landroid/content/Context;

    .line 32
    return-void
.end method
