.class public abstract Lcom/fimi/kernel/connect/BaseConnect;
.super Ljava/lang/Object;
.source "BaseConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;
    }
.end annotation


# instance fields
.field private clientAddress:Ljava/lang/String;

.field private clientName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract closeSession()V
.end method

.method public getClientAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseConnect;->clientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/kernel/connect/BaseConnect;->clientName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isDeviceConnected()Z
.end method

.method public receiveLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method

.method public abstract sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
.end method

.method public abstract sendJsonCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
.end method

.method public sendLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method

.method public sendTimeCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 26
    return-void
.end method

.method public setClientAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientAddress"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseConnect;->clientAddress:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setClientName(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/kernel/connect/BaseConnect;->clientName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public abstract startSession()V
.end method
