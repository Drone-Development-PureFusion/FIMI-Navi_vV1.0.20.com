.class public Lcom/fimi/app/x8s/entity/X8AiModeState;
.super Ljava/lang/Object;
.source "X8AiModeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;
    }
.end annotation


# instance fields
.field private aiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->IDLE:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    iput-object v0, p0, Lcom/fimi/app/x8s/entity/X8AiModeState;->aiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    return-void
.end method


# virtual methods
.method public getAiModeState()Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8AiModeState;->aiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    return-object v0
.end method

.method public isAiModeStateIdle()Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8AiModeState;->aiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    sget-object v1, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->IDLE:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAiModeStateReady()Z
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8AiModeState;->aiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    sget-object v1, Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;->READY:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAiModeState(Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;)V
    .locals 0
    .param p1, "aiModeState"    # Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8AiModeState;->aiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState$AiModeState;

    .line 15
    return-void
.end method
