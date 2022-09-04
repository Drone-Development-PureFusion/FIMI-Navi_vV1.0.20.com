.class public Lcom/fimi/x8sdk/entity/CameraSystemState;
.super Ljava/lang/Object;
.source "CameraSystemState.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private awbVal:Ljava/lang/String;

.field private evVal:Ljava/lang/String;

.field private isoVal:Ljava/lang/String;

.field private shutterVal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAwbVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/CameraSystemState;->awbVal:Ljava/lang/String;

    return-object v0
.end method

.method public getEvVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/CameraSystemState;->evVal:Ljava/lang/String;

    return-object v0
.end method

.method public getIsoVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/CameraSystemState;->isoVal:Ljava/lang/String;

    return-object v0
.end method

.method public getShutterVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/CameraSystemState;->shutterVal:Ljava/lang/String;

    return-object v0
.end method

.method public setAwbVal(Ljava/lang/String;)V
    .locals 0
    .param p1, "awbVal"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/CameraSystemState;->awbVal:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setEvVal(Ljava/lang/String;)V
    .locals 0
    .param p1, "evVal"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/CameraSystemState;->evVal:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setIsoVal(Ljava/lang/String;)V
    .locals 0
    .param p1, "isoVal"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/CameraSystemState;->isoVal:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setShutterVal(Ljava/lang/String;)V
    .locals 0
    .param p1, "shutterVal"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/CameraSystemState;->shutterVal:Ljava/lang/String;

    .line 38
    return-void
.end method
