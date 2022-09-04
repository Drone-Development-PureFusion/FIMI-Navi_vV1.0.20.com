.class public Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetAiLinePointsAction.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fimi/x8sdk/dataparser/X8BaseMessage;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;",
        ">;"
    }
.end annotation


# instance fields
.field public cmd0:I

.field public cmd1:I

.field public count:I

.field public para0:I

.field public para1:I

.field public pos:I

.field public time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;)I
    .locals 2
    .param p1, "o"    # Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->pos:I

    iget v1, p1, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    check-cast p1, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;

    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->compareTo(Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;)I

    move-result v0

    return v0
.end method

.method public getAction()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "action":I
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd0:I

    if-nez v1, :cond_1

    .line 64
    const/4 v0, 0x0

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd0:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd1:I

    if-nez v1, :cond_2

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_2
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd0:I

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd1:I

    if-nez v1, :cond_3

    .line 68
    const/4 v0, 0x2

    goto :goto_0

    .line 71
    :cond_3
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd0:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd1:I

    if-nez v1, :cond_4

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->para0:I

    if-ne v1, v2, :cond_4

    .line 72
    const/4 v0, 0x4

    goto :goto_0

    .line 73
    :cond_4
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd0:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd1:I

    if-ne v1, v3, :cond_5

    .line 74
    const/4 v0, 0x5

    goto :goto_0

    .line 75
    :cond_5
    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd0:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd1:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->para0:I

    if-ne v1, v4, :cond_0

    .line 76
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 23
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->pos:I

    .line 24
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->count:I

    .line 25
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 26
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 27
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd0:I

    .line 28
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->cmd1:I

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->time:I

    .line 33
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->para0:I

    .line 34
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v1

    iput v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePointsAction;->para1:I

    .line 35
    return-void
.end method
