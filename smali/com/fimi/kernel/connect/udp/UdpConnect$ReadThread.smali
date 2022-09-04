.class Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;
.super Ljava/lang/Thread;
.source "UdpConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/udp/UdpConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/connect/udp/UdpConnect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/udp/UdpConnect;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-static {v1}, Lcom/fimi/kernel/connect/udp/UdpConnect;->access$000(Lcom/fimi/kernel/connect/udp/UdpConnect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :try_start_0
    invoke-static {}, Lcom/fimi/kernel/connect/udp/UdpConnect;->access$200()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-static {}, Lcom/fimi/kernel/connect/udp/UdpConnect;->access$100()Ljava/net/DatagramPacket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 107
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/udp/UdpConnect;->updateTime()V

    .line 108
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-static {v1}, Lcom/fimi/kernel/connect/udp/UdpConnect;->access$300(Lcom/fimi/kernel/connect/udp/UdpConnect;)Lcom/fimi/kernel/connect/ResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-static {v1}, Lcom/fimi/kernel/connect/udp/UdpConnect;->access$300(Lcom/fimi/kernel/connect/udp/UdpConnect;)Lcom/fimi/kernel/connect/ResultListener;

    move-result-object v1

    invoke-static {}, Lcom/fimi/kernel/connect/udp/UdpConnect;->access$100()Ljava/net/DatagramPacket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fimi/kernel/connect/ResultListener;->messageReceived([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method
