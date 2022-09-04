.class public Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;
.super Ljava/lang/Object;
.source "X8JsonCmdDeque.java"


# instance fields
.field private aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

.field private cmdQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/fimi/kernel/connect/BaseCommand;",
            ">;"
        }
    .end annotation
.end field

.field private lastSendTime:J


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/usb/AOAConnect;)V
    .locals 1
    .param p1, "aoaConnect"    # Lcom/fimi/kernel/connect/usb/AOAConnect;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->cmdQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 19
    iput-object p1, p0, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

    .line 20
    return-void
.end method


# virtual methods
.method public addJsonCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->cmdQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public checkJsonCmdSendTime()V
    .locals 6

    .prologue
    .line 26
    iget-object v1, p0, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->cmdQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->cmdQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->lastSendTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->lastSendTime:J

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    iget-object v1, p0, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->cmdQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 31
    .restart local v0    # "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    iget-object v1, p0, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/connect/usb/AOAConnect;->putInQueue(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 34
    .end local v0    # "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_0
    return-void
.end method
