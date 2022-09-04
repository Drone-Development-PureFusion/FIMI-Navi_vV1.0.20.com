.class public Lcom/fimi/x8sdk/appsetting/ValueSensity;
.super Ljava/lang/Object;
.source "ValueSensity.java"


# instance fields
.field private pitch:F

.field private roll:F

.field private thro:F

.field private yaw:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "pitch"    # F
    .param p2, "roll"    # F
    .param p3, "thro"    # F
    .param p4, "yaw"    # F

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/appsetting/ValueSensity;->setPitch(F)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/fimi/x8sdk/appsetting/ValueSensity;->setRoll(F)V

    .line 14
    invoke-virtual {p0, p3}, Lcom/fimi/x8sdk/appsetting/ValueSensity;->setThro(F)V

    .line 15
    invoke-virtual {p0, p4}, Lcom/fimi/x8sdk/appsetting/ValueSensity;->setYaw(F)V

    .line 16
    return-void
.end method


# virtual methods
.method public getPitch()F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/ValueSensity;->pitch:F

    return v0
.end method

.method public getRoll()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/ValueSensity;->roll:F

    return v0
.end method

.method public getThro()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/ValueSensity;->thro:F

    return v0
.end method

.method public getYaw()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/ValueSensity;->yaw:F

    return v0
.end method

.method public setPitch(F)V
    .locals 0
    .param p1, "pitch"    # F

    .prologue
    .line 28
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/ValueSensity;->pitch:F

    .line 29
    return-void
.end method

.method public setRoll(F)V
    .locals 0
    .param p1, "roll"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/ValueSensity;->roll:F

    .line 37
    return-void
.end method

.method public setThro(F)V
    .locals 0
    .param p1, "thro"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/ValueSensity;->thro:F

    .line 45
    return-void
.end method

.method public setYaw(F)V
    .locals 0
    .param p1, "yaw"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/ValueSensity;->yaw:F

    .line 53
    return-void
.end method
