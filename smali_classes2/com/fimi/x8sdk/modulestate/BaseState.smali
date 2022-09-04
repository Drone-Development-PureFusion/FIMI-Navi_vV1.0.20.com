.class public abstract Lcom/fimi/x8sdk/modulestate/BaseState;
.super Ljava/lang/Object;
.source "BaseState.java"


# instance fields
.field public final LOGIN_STATE_CONNECT:I

.field public final LOGIN_STATE_DISCONNECT:I

.field public final LOGIN_STATE_IDLE:I

.field private hwVerion:I

.field private loginState:I

.field private model:I

.field private softVerion:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->softVerion:I

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->LOGIN_STATE_IDLE:I

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->LOGIN_STATE_CONNECT:I

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->LOGIN_STATE_DISCONNECT:I

    return-void
.end method


# virtual methods
.method public getHwVerion()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->hwVerion:I

    return v0
.end method

.method public getLoginState()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->loginState:I

    return v0
.end method

.method public getModel()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->model:I

    return v0
.end method

.method public getSoftVerion()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->softVerion:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->type:I

    return v0
.end method

.method public abstract isAvailable()Z
.end method

.method public setHwVerion(I)V
    .locals 0
    .param p1, "hwVerion"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->hwVerion:I

    .line 50
    return-void
.end method

.method public setLoginState(I)V
    .locals 0
    .param p1, "loginState"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->loginState:I

    .line 58
    return-void
.end method

.method public setModel(I)V
    .locals 0
    .param p1, "model"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->model:I

    .line 34
    return-void
.end method

.method public setSoftVerion(I)V
    .locals 0
    .param p1, "softVerion"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->softVerion:I

    .line 42
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/fimi/x8sdk/modulestate/BaseState;->type:I

    .line 26
    return-void
.end method
