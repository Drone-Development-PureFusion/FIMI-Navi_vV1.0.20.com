.class public Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;
.super Ljava/lang/Thread;
.source "BleConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/ble/BleConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadThread"
.end annotation


# instance fields
.field private mExit:Z

.field final synthetic this$0:Lcom/fimi/kernel/connect/ble/BleConnect;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/ble/BleConnect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/ble/BleConnect;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public releaseConnection()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;->mExit:Z

    .line 324
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;->interrupt()V

    .line 325
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 330
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;->mExit:Z

    if-nez v2, :cond_1

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    iget-object v2, v2, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene2:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    iget-object v2, v2, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene2:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 335
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 337
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    invoke-static {v2}, Lcom/fimi/kernel/connect/ble/BleConnect;->access$300(Lcom/fimi/kernel/connect/ble/BleConnect;)Lcom/fimi/kernel/connect/ResultListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/fimi/kernel/connect/ResultListener;->messageReceived([B)V

    .line 338
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/fimi/kernel/utils/ByteUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "======="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/connect/ble/BleConnect;->receiveLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/ble/BleConnect;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sessionhandler writethread error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 347
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-virtual {v2, v3}, Lcom/fimi/kernel/connect/ble/BleConnect;->receiveLog(Ljava/lang/String;)V

    .line 353
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 342
    :cond_2
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
