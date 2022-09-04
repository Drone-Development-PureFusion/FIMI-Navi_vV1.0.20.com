.class public Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckAccurateLandingState.java"


# static fields
.field private static i:I

.field private static timeout:J


# instance fields
.field private errorCode:I

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const/16 v0, 0xc8

    sput v0, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->i:I

    .line 13
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->timeout:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method

.method public static isTimeOut()Z
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->timeout:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBit2()Z
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->state:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->state:I

    return v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->state:I

    .line 36
    return-void
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 17
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->state:I

    .line 18
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->errorCode:I

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/fimi/x8sdk/dataparser/AckAccurateLandingState;->timeout:J

    .line 20
    return-void
.end method
