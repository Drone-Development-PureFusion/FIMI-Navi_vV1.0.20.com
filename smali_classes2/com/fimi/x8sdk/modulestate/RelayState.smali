.class public Lcom/fimi/x8sdk/modulestate/RelayState;
.super Lcom/fimi/x8sdk/modulestate/BaseState;
.source "RelayState.java"


# instance fields
.field private lastRlHeartTime:J

.field private relayHeart:Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

.field relayState:Lcom/fimi/x8sdk/modulestate/RelayState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fimi/x8sdk/modulestate/BaseState;-><init>()V

    return-void
.end method


# virtual methods
.method public getApModel()I
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/RelayState;->relayHeart:Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/RelayState;->relayHeart:Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->getStatus()S

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/BitUtil;->getBitByByte(II)I

    move-result v0

    goto :goto_0
.end method

.method public getRelayHeart()Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/RelayState;->relayHeart:Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    return-object v0
.end method

.method public getRelayState()Lcom/fimi/x8sdk/modulestate/RelayState;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/RelayState;->relayState:Lcom/fimi/x8sdk/modulestate/RelayState;

    return-object v0
.end method

.method public getRelayVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public isConnect()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/VersionState;->getModuleRepeaterRcVersion()Lcom/fimi/x8sdk/dataparser/AckVersion;

    move-result-object v0

    .line 45
    .local v0, "version":Lcom/fimi/x8sdk/dataparser/AckVersion;
    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckVersion;->getSoftVersion()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRlTimeOut()Z
    .locals 4

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/modulestate/RelayState;->lastRlHeartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRelayHeart(Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;)V
    .locals 0
    .param p1, "relayHeart"    # Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/RelayState;->relayHeart:Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;

    .line 54
    return-void
.end method

.method public setRelayState(Lcom/fimi/x8sdk/modulestate/RelayState;)V
    .locals 0
    .param p1, "relayState"    # Lcom/fimi/x8sdk/modulestate/RelayState;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/RelayState;->relayState:Lcom/fimi/x8sdk/modulestate/RelayState;

    .line 37
    return-void
.end method

.method public updateLastRlHeartTime()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/modulestate/RelayState;->lastRlHeartTime:J

    .line 18
    return-void
.end method
