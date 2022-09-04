.class public Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckTFCarddCap.java"


# instance fields
.field private tfCardCap:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getTfCardCap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;->tfCardCap:Ljava/lang/String;

    return-object v0
.end method

.method public setTfCardCap(Ljava/lang/String;)V
    .locals 0
    .param p1, "tfCardCap"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;->tfCardCap:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckTFCarddCap{tfCardCap=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;->tfCardCap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 6
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 17
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getPayloadData()[B

    move-result-object v1

    .line 18
    .local v1, "payLoad":[B
    array-length v0, v1

    .line 19
    .local v0, "length":I
    add-int/lit8 v3, v0, -0x4

    new-array v2, v3, [B

    .line 20
    .local v2, "tfcap":[B
    const/4 v3, 0x4

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/fimi/x8sdk/dataparser/AckTFCarddCap;->tfCardCap:Ljava/lang/String;

    .line 22
    return-void
.end method
