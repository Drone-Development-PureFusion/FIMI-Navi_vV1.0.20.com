.class public Lcom/fimi/x8sdk/connect/DataChanel;
.super Ljava/lang/Object;
.source "DataChanel.java"

# interfaces
.implements Lcom/fimi/kernel/connect/ResultListener;


# instance fields
.field fmLinkDataChanel:Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;

.field fwUploadDataChanel:Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;

.field jsonDataChanel:Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;

.field mediaDataChanel:Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;

.field videoDataChanel:Lcom/fimi/x8sdk/connect/datatype/VideoDataChanel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/fimi/x8sdk/connect/datatype/VideoDataChanel;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/datatype/VideoDataChanel;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/DataChanel;->videoDataChanel:Lcom/fimi/x8sdk/connect/datatype/VideoDataChanel;

    .line 25
    new-instance v0, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/DataChanel;->fmLinkDataChanel:Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;

    .line 26
    new-instance v0, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/DataChanel;->jsonDataChanel:Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;

    .line 27
    new-instance v0, Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/DataChanel;->mediaDataChanel:Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;

    .line 28
    new-instance v0, Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/DataChanel;->fwUploadDataChanel:Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;

    return-void
.end method


# virtual methods
.method public isAppRequestCmd(II)Z
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public log([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 76
    invoke-static {}, Lcom/fimi/host/CmdLogBack;->getInstance()Lcom/fimi/host/CmdLogBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fimi/host/CmdLogBack;->writeLog([BZ)V

    .line 77
    return-void
.end method

.method public messageReceived([B)V
    .locals 7
    .param p1, "buffer"    # [B

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 32
    array-length v4, p1

    if-gt v4, v6, :cond_0

    .line 72
    :goto_0
    :pswitch_0
    return-void

    .line 35
    :cond_0
    aget-byte v4, p1, v5

    and-int/lit8 v3, v4, 0xf

    .line 36
    .local v3, "ver":I
    if-eqz v3, :cond_1

    .line 39
    :cond_1
    const/4 v4, 0x3

    aget-byte v2, p1, v4

    .line 40
    .local v2, "type":I
    array-length v4, p1

    add-int/lit8 v1, v4, -0x5

    .line 41
    .local v1, "dataLen":I
    new-array v0, v1, [B

    .line 42
    .local v0, "data":[B
    const/4 v4, 0x0

    invoke-static {p1, v6, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    if-eq v2, v5, :cond_2

    .line 44
    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/connect/DataChanel;->log([B)V

    .line 46
    :cond_2
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v4, p0, Lcom/fimi/x8sdk/connect/DataChanel;->fmLinkDataChanel:Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;

    invoke-virtual {v4, v0}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->forwardData([B)V

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v4, p0, Lcom/fimi/x8sdk/connect/DataChanel;->jsonDataChanel:Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;

    invoke-virtual {v4, v0}, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;->forwardData([B)V

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v4, p0, Lcom/fimi/x8sdk/connect/DataChanel;->videoDataChanel:Lcom/fimi/x8sdk/connect/datatype/VideoDataChanel;

    invoke-virtual {v4, v0}, Lcom/fimi/x8sdk/connect/datatype/VideoDataChanel;->forwardData([B)V

    goto :goto_0

    .line 58
    :pswitch_4
    iget-object v4, p0, Lcom/fimi/x8sdk/connect/DataChanel;->mediaDataChanel:Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;

    invoke-virtual {v4, v0}, Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;->forwardData([B)V

    goto :goto_0

    .line 63
    :pswitch_5
    iget-object v4, p0, Lcom/fimi/x8sdk/connect/DataChanel;->fmLinkDataChanel:Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;

    invoke-virtual {v4, v0}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->forwardData([B)V

    goto :goto_0

    .line 66
    :pswitch_6
    iget-object v4, p0, Lcom/fimi/x8sdk/connect/DataChanel;->fwUploadDataChanel:Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;

    invoke-virtual {v4, v0}, Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;->forwardData([B)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setRetransmissionHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/DataChanel;->fmLinkDataChanel:Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->setRetransmissionHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;)V

    .line 82
    return-void
.end method

.method public setRetransmissionJsonHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/DataChanel;->jsonDataChanel:Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/connect/datatype/JsonDataChanel;->setRetransmissionHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;)V

    .line 92
    return-void
.end method

.method public setRetransmissionUsbHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/DataChanel;->fwUploadDataChanel:Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FwUploadDataChanel;->setRetransmissionHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;)V

    .line 97
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/DataChanel;->mediaDataChanel:Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;->setRetransmissionUsbHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;)V

    .line 98
    return-void
.end method

.method public setTimerSendQueueHandle(Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;)V
    .locals 1
    .param p1, "handle"    # Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/DataChanel;->fmLinkDataChanel:Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/connect/datatype/FmLinkDataChanel;->setTimerSendQueueHandle(Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;)V

    .line 87
    return-void
.end method
