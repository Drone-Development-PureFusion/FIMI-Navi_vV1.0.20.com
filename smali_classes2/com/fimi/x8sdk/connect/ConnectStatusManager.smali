.class public Lcom/fimi/x8sdk/connect/ConnectStatusManager;
.super Ljava/lang/Object;
.source "ConnectStatusManager.java"


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/fimi/x8sdk/connect/ConnectStatusManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fimi/x8sdk/connect/ConnectStatusManager$1;-><init>(Lcom/fimi/x8sdk/connect/ConnectStatusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/ConnectStatusManager;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onDataRecieved(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 0
    .param p1, "packet4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 21
    return-void
.end method
