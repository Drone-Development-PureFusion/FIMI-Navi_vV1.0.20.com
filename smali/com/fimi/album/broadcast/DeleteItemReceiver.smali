.class public Lcom/fimi/album/broadcast/DeleteItemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeleteItemReceiver.java"


# instance fields
.field private mIBroadcastPreform:Lcom/fimi/album/iview/IBroadcastPreform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/album/broadcast/DeleteItemReceiver;->mIBroadcastPreform:Lcom/fimi/album/iview/IBroadcastPreform;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/fimi/album/broadcast/DeleteItemReceiver;->mIBroadcastPreform:Lcom/fimi/album/iview/IBroadcastPreform;

    invoke-interface {v0, p1, p2}, Lcom/fimi/album/iview/IBroadcastPreform;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 24
    :cond_0
    return-void
.end method

.method public setIReceiver(Lcom/fimi/album/iview/IBroadcastPreform;)V
    .locals 0
    .param p1, "IReceiver"    # Lcom/fimi/album/iview/IBroadcastPreform;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fimi/album/broadcast/DeleteItemReceiver;->mIBroadcastPreform:Lcom/fimi/album/iview/IBroadcastPreform;

    .line 28
    return-void
.end method
