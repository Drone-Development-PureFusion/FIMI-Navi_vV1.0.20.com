.class public Lcom/fimi/receiver/SpeekSignReceiver;
.super Lcom/fimi/receiver/NetworkStateReceiver;
.source "SpeekSignReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/fimi/receiver/NetworkStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStateChange(Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;Landroid/content/Context;)V
    .locals 0
    .param p1, "type"    # Lcom/fimi/receiver/NetworkStateReceiver$NetworkType;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    return-void
.end method
