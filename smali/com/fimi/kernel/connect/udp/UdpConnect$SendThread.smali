.class Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;
.super Ljava/lang/Thread;
.source "UdpConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/udp/UdpConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;


# direct methods
.method private constructor <init>(Lcom/fimi/kernel/connect/udp/UdpConnect;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/kernel/connect/udp/UdpConnect;Lcom/fimi/kernel/connect/udp/UdpConnect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/kernel/connect/udp/UdpConnect;
    .param p2, "x1"    # Lcom/fimi/kernel/connect/udp/UdpConnect$1;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;-><init>(Lcom/fimi/kernel/connect/udp/UdpConnect;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 163
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 164
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-static {v1}, Lcom/fimi/kernel/connect/udp/UdpConnect;->access$000(Lcom/fimi/kernel/connect/udp/UdpConnect;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    iget-object v1, v1, Lcom/fimi/kernel/connect/udp/UdpConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 167
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    iget-object v1, v1, Lcom/fimi/kernel/connect/udp/UdpConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 168
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/connect/BaseCommand;->setLastSendTime(J)V

    .line 171
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->isAddToSendQueue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->isTimerCmd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-static {v1}, Lcom/fimi/kernel/connect/udp/UdpConnect;->access$400(Lcom/fimi/kernel/connect/udp/UdpConnect;)Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->addToSendList(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 190
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/connect/udp/UdpConnect;->sendDatas(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-static {v1}, Lcom/fimi/kernel/connect/udp/UdpConnect;->access$500(Lcom/fimi/kernel/connect/udp/UdpConnect;)Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->addToSendList(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_1

    .line 196
    .end local v0    # "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_3
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/udp/UdpConnect;->sendSignal()V

    goto :goto_0

    .line 206
    :cond_4
    return-void
.end method
