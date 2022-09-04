.class public Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;
.super Ljava/lang/Thread;
.source "BleConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/ble/BleConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckDeviceConnectThread"
.end annotation


# instance fields
.field private isLoop:Z

.field final synthetic this$0:Lcom/fimi/kernel/connect/ble/BleConnect;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/ble/BleConnect;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/ble/BleConnect;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->isLoop:Z

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->isLoop:Z

    .line 369
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->interrupt()V

    .line 370
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 373
    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    const-string v2, " CheckDeviceConnectThread run"

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/connect/ble/BleConnect;->receiveLog(Ljava/lang/String;)V

    .line 375
    :goto_0
    iget-boolean v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->isLoop:Z

    if-eqz v1, :cond_1

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    invoke-static {v1}, Lcom/fimi/kernel/connect/ble/BleConnect;->access$400(Lcom/fimi/kernel/connect/ble/BleConnect;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    iget-object v1, v1, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v1

    if-gtz v1, :cond_0

    sget-boolean v1, Lcom/fimi/kernel/Constants;->isCheckDeviceConnect:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/session/SessionManager;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    iget-object v2, v2, Lcom/fimi/kernel/connect/ble/BleConnect;->bleStateCommand:Lcom/fimi/kernel/connect/BaseCommand;

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/connect/ble/BleConnect;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 381
    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
