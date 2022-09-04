.class public Lcom/fimi/x8sdk/dataparser/AutoVcTracking;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoVcTracking.java"


# static fields
.field public static final REMOTESIGN_LOW:I = 0x1e

.field public static final REMOTESIGN_MID:I = 0x50


# instance fields
.field classifier:I

.field confidence:I

.field h:I

.field time:I

.field trackErrorCode:J

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method

.method public static getRemotesignLow()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x1e

    return v0
.end method

.method public static getRemotesignMid()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x50

    return v0
.end method


# virtual methods
.method public getConfidence()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->confidence:I

    return v0
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->h:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->time:I

    return v0
.end method

.method public getTrackErrorCode()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->trackErrorCode:J

    return-wide v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->w:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->y:I

    return v0
.end method

.method public setConfidence(I)V
    .locals 0
    .param p1, "confidence"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->confidence:I

    .line 92
    return-void
.end method

.method public setH(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->h:I

    .line 76
    return-void
.end method

.method public setTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->time:I

    .line 52
    return-void
.end method

.method public setTrackErrorCode(J)V
    .locals 1
    .param p1, "trackErrorCode"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->trackErrorCode:J

    .line 100
    return-void
.end method

.method public setW(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->w:I

    .line 84
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->x:I

    .line 60
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->y:I

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoVcTracking{time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->confidence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->trackErrorCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    const v1, 0xffff

    .line 22
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 24
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->time:I

    .line 25
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->x:I

    .line 26
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->y:I

    .line 27
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->w:I

    .line 28
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->h:I

    .line 29
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->classifier:I

    .line 30
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->confidence:I

    .line 31
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 32
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 33
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 34
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    .line 35
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->trackErrorCode:J

    .line 36
    return-void
.end method
