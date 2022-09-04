.class public Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoFcErrCode.java"


# static fields
.field public static p:J


# instance fields
.field systemStatusCodA:J

.field systemStatusCodB:J

.field systemStatusCodC:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->p:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemStatusCodA()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodA:J

    return-wide v0
.end method

.method public getSystemStatusCodB()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodB:J

    return-wide v0
.end method

.method public getSystemStatusCodC()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodC:J

    return-wide v0
.end method

.method public setSystemStatusCodA(I)V
    .locals 2
    .param p1, "systemStatusCodA"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodA:J

    .line 46
    return-void
.end method

.method public setSystemStatusCodB(I)V
    .locals 2
    .param p1, "systemStatusCodB"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodB:J

    .line 54
    return-void
.end method

.method public setSystemStatusCodC(I)V
    .locals 2
    .param p1, "systemStatusCodC"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodC:J

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoFcErrCode{systemStatusCodA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodA:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemStatusCodB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodB:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemStatusCodC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodC:J

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
    .locals 6
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    const-wide/16 v4, 0x0

    .line 21
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 22
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodA:J

    .line 23
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodA:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 24
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodA:J

    sget-wide v2, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->p:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodA:J

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodB:J

    .line 28
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodB:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 29
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodB:J

    sget-wide v2, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->p:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodB:J

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodC:J

    .line 33
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodC:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 34
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodC:J

    sget-wide v2, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->p:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AutoFcErrCode;->systemStatusCodC:J

    .line 37
    :cond_2
    return-void
.end method
