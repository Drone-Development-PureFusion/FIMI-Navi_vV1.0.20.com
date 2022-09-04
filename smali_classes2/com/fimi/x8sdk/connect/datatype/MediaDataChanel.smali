.class public Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;
.super Ljava/lang/Object;
.source "MediaDataChanel.java"

# interfaces
.implements Lcom/fimi/x8sdk/connect/datatype/IDataChanel;


# instance fields
.field private retransmissionUsbHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forwardData([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 15
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fimi/kernel/connect/session/NoticeManager;->onMediaDataCallBack([B)V

    .line 16
    const/4 v2, 0x0

    aget-byte v0, p1, v2

    .line 17
    .local v0, "cmdKey":I
    if-nez v0, :cond_1

    .line 18
    iget-object v2, p0, Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;->retransmissionUsbHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;

    if-eqz v2, :cond_0

    .line 19
    iget-object v2, p0, Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;->retransmissionUsbHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;

    invoke-interface {v2, v0}, Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;->removeFromListByUsbCmdKey(I)Z

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 22
    const/4 v2, 0x7

    invoke-virtual {p0, v2, p1}, Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;->getInt(I[B)I

    move-result v1

    .line 23
    .local v1, "offSet":I
    iget-object v2, p0, Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;->retransmissionUsbHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;

    if-eqz v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;->retransmissionUsbHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;

    invoke-interface {v2, v1}, Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;->removeFormListByOffset(I)Z

    goto :goto_0
.end method

.method public getInt(I[B)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # [B

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "result":I
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 36
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 37
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 38
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 39
    return v0
.end method

.method public getShort(I[B)S
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # [B

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "result":S
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 45
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 46
    return v0
.end method

.method public setRetransmissionUsbHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;)V
    .locals 0
    .param p1, "retransmissionUsbHandle"    # Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fimi/x8sdk/connect/datatype/MediaDataChanel;->retransmissionUsbHandle:Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;

    .line 31
    return-void
.end method
