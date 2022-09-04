.class public Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;
.super Ljava/lang/Object;
.source "FwUploadDataChanel.java"

# interfaces
.implements Lcom/fimi/x8sdk/connect/datatype/IDataChanel;


# instance fields
.field private p:Lcom/fimi/kernel/dataparser/fmlink4/Parser4;

.field private retransmissionUsbHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/fmlink4/Parser4;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;->p:Lcom/fimi/kernel/dataparser/fmlink4/Parser4;

    return-void
.end method


# virtual methods
.method public forwardData([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 23
    new-instance v0, Lcom/fimi/kernel/connect/model/UpdateDateMessage;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/model/UpdateDateMessage;-><init>()V

    .line 24
    .local v0, "updateDateMessage":Lcom/fimi/kernel/connect/model/UpdateDateMessage;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/fimi/kernel/utils/ByteUtil;->bytesToInt([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->setMsgLen(I)V

    .line 25
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->setFaultMessage(B)V

    .line 26
    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/fimi/kernel/utils/ByteUtil;->bytesToInt([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->setFileOffset(I)V

    .line 27
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/connect/session/NoticeManager;->onUpdateDateCallBack(Lcom/fimi/kernel/connect/model/UpdateDateMessage;)V

    .line 28
    iget-object v1, p0, Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;->retransmissionUsbHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;->retransmissionUsbHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/model/UpdateDateMessage;->getFileOffset()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;->removeFormListByOffset(I)Z

    .line 32
    :cond_0
    return-void
.end method

.method public setRetransmissionHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;)V
    .locals 0
    .param p1, "retransmissionUsbHandle"    # Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;->retransmissionUsbHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;

    .line 36
    return-void
.end method
