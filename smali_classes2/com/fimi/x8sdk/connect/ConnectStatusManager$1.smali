.class Lcom/fimi/x8sdk/connect/ConnectStatusManager$1;
.super Landroid/os/Handler;
.source "ConnectStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/connect/ConnectStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/connect/ConnectStatusManager;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/connect/ConnectStatusManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/connect/ConnectStatusManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fimi/x8sdk/connect/ConnectStatusManager$1;->this$0:Lcom/fimi/x8sdk/connect/ConnectStatusManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 31
    return-void
.end method
