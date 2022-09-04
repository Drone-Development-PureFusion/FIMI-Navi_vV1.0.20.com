.class public Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;
.super Ljava/lang/Thread;
.source "UdpConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/udp/UdpConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckDeviceConnectThread"
.end annotation


# instance fields
.field private isLoop:Z

.field final synthetic this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/udp/UdpConnect;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/udp/UdpConnect;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;->isLoop:Z

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;->isLoop:Z

    .line 297
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;->interrupt()V

    .line 298
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 303
    :goto_0
    iget-boolean v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;->isLoop:Z

    if-eqz v1, :cond_1

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-static {v1}, Lcom/fimi/kernel/connect/udp/UdpConnect;->access$700(Lcom/fimi/kernel/connect/udp/UdpConnect;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;->this$0:Lcom/fimi/kernel/connect/udp/UdpConnect;

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/udp/UdpConnect;->closeSession()V

    .line 308
    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 314
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
