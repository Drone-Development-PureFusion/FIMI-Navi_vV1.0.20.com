.class public Lcom/fimi/x8sdk/modulestate/NfzState;
.super Lcom/fimi/x8sdk/modulestate/BaseState;
.source "NfzState.java"


# instance fields
.field mAckNoFlyNormal:Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fimi/x8sdk/modulestate/BaseState;-><init>()V

    return-void
.end method


# virtual methods
.method public getAckNoFlyNormal()Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/x8sdk/modulestate/NfzState;->mAckNoFlyNormal:Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public setAckNoFlyNormal(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;)V
    .locals 0
    .param p1, "mAckNoFlyNormal"    # Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fimi/x8sdk/modulestate/NfzState;->mAckNoFlyNormal:Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;

    .line 19
    return-void
.end method
