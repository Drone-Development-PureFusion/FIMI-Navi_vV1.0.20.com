.class public abstract Lcom/fimi/kernel/dataparser/milink/LinkMessage;
.super Lcom/fimi/kernel/dataparser/ILinkMessage;
.source "LinkMessage.java"


# instance fields
.field private errorCode:B

.field private msgGroudId:I

.field private msgId:I

.field private uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/fimi/kernel/dataparser/ILinkMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fillPayload(Lcom/fimi/kernel/dataparser/milink/LinkPacket;)V
.end method

.method public getErrorCode()B
    .locals 1

    .prologue
    .line 34
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkMessage;->errorCode:B

    return v0
.end method

.method public getMsgGroudId()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkMessage;->msgGroudId:I

    return v0
.end method

.method public getMsgId()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkMessage;->msgId:I

    return v0
.end method

.method public getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkMessage;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    return-object v0
.end method

.method public setErrorCode(B)V
    .locals 0
    .param p1, "errorCode"    # B

    .prologue
    .line 38
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/milink/LinkMessage;->errorCode:B

    .line 39
    return-void
.end method

.method public setMsgGroudId(I)V
    .locals 0
    .param p1, "msgGroudId"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/LinkMessage;->msgGroudId:I

    .line 16
    return-void
.end method

.method public setMsgId(I)V
    .locals 0
    .param p1, "msgId"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/LinkMessage;->msgId:I

    .line 25
    return-void
.end method

.method public setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 0
    .param p1, "uiCallBack"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/milink/LinkMessage;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .line 42
    return-void
.end method

.method public abstract unpack(Lcom/fimi/kernel/dataparser/milink/LinkPayload;)V
.end method
