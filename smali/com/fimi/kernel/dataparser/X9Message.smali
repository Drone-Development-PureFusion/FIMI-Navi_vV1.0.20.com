.class public Lcom/fimi/kernel/dataparser/X9Message;
.super Lcom/fimi/kernel/dataparser/milink/LinkMessage;
.source "X9Message.java"


# instance fields
.field private content:[B

.field private seqIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fimi/kernel/dataparser/milink/LinkMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/X9Message;->content:[B

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/X9Message;->content:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/X9Message;->setMsgGroudId(I)V

    .line 44
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/X9Message;->content:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/X9Message;->setMsgId(I)V

    .line 45
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/X9Message;->content:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/X9Message;->setErrorCode(B)V

    .line 47
    :cond_0
    return-void
.end method

.method public fillPayload(Lcom/fimi/kernel/dataparser/milink/LinkPacket;)V
    .locals 0
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 34
    return-void
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/X9Message;->content:[B

    return-object v0
.end method

.method public getSeqIndex()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/kernel/dataparser/X9Message;->seqIndex:I

    return v0
.end method

.method public setContent([B)V
    .locals 0
    .param p1, "content"    # [B

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/X9Message;->content:[B

    .line 21
    return-void
.end method

.method public setSeqIndex(I)V
    .locals 0
    .param p1, "seqIndex"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/fimi/kernel/dataparser/X9Message;->seqIndex:I

    .line 30
    return-void
.end method

.method public unpack(Lcom/fimi/kernel/dataparser/milink/LinkPayload;)V
    .locals 0
    .param p1, "payload"    # Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    .prologue
    .line 39
    return-void
.end method
