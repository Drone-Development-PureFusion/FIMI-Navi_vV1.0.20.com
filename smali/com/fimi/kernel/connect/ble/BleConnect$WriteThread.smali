.class public Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;
.super Ljava/lang/Thread;
.source "BleConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/ble/BleConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriteThread"
.end annotation


# instance fields
.field private mExit:Z

.field final synthetic this$0:Lcom/fimi/kernel/connect/ble/BleConnect;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/ble/BleConnect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/ble/BleConnect;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public releaseConnection()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->mExit:Z

    .line 253
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->interrupt()V

    .line 254
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 259
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->mExit:Z

    if-nez v2, :cond_2

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    iget-object v2, v2, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 263
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    iget-object v2, v2, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 264
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/connect/BaseCommand;->setLastSendTime(J)V

    .line 266
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->isAddToSendQueue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->isTimerCmd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    invoke-static {v2}, Lcom/fimi/kernel/connect/ble/BleConnect;->access$000(Lcom/fimi/kernel/connect/ble/BleConnect;)Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->addToSendList(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 276
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgGroudId()I

    move-result v3

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v4

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v5

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/fimi/kernel/connect/ble/BleConnect;->access$200(Lcom/fimi/kernel/connect/ble/BleConnect;II[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v0    # "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sessionhandler writethread error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 286
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v2, v3}, Lcom/fimi/kernel/connect/ble/BleConnect;->receiveLog(Ljava/lang/String;)V

    .line 292
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 273
    .restart local v0    # "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    invoke-static {v2}, Lcom/fimi/kernel/connect/ble/BleConnect;->access$100(Lcom/fimi/kernel/connect/ble/BleConnect;)Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->addToSendList(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_1

    .line 280
    .end local v0    # "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_4
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    invoke-virtual {v2}, Lcom/fimi/kernel/connect/ble/BleConnect;->sendSignal()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
