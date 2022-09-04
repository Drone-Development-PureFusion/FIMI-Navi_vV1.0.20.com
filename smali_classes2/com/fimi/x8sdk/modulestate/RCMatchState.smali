.class public Lcom/fimi/x8sdk/modulestate/RCMatchState;
.super Lcom/fimi/x8sdk/modulestate/BaseState;
.source "RCMatchState.java"


# instance fields
.field private ackRightRoller:Lcom/fimi/x8sdk/dataparser/AckRightRoller;

.field private matchRt:Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fimi/x8sdk/modulestate/BaseState;-><init>()V

    return-void
.end method


# virtual methods
.method public getAckRightRoller()Lcom/fimi/x8sdk/dataparser/AckRightRoller;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/RCMatchState;->ackRightRoller:Lcom/fimi/x8sdk/dataparser/AckRightRoller;

    return-object v0
.end method

.method public getMatchRt()Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/RCMatchState;->matchRt:Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public setAckRightRoller(Lcom/fimi/x8sdk/dataparser/AckRightRoller;)V
    .locals 0
    .param p1, "ackRightRoller"    # Lcom/fimi/x8sdk/dataparser/AckRightRoller;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/RCMatchState;->ackRightRoller:Lcom/fimi/x8sdk/dataparser/AckRightRoller;

    .line 30
    return-void
.end method

.method public setMatchRt(Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;)V
    .locals 0
    .param p1, "matchRt"    # Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/RCMatchState;->matchRt:Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCMatchState{matchRt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/modulestate/RCMatchState;->matchRt:Lcom/fimi/x8sdk/dataparser/AutoRCMatchRt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
