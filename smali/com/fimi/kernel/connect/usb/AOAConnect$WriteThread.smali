.class Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;
.super Ljava/lang/Thread;
.source "AOAConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/usb/AOAConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/connect/usb/AOAConnect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/usb/AOAConnect;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 189
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 190
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    iget-object v2, v2, Lcom/fimi/kernel/connect/usb/AOAConnect;->outputStream:Ljava/io/FileOutputStream;

    if-nez v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-static {v2}, Lcom/fimi/kernel/connect/usb/AOAConnect;->access$000(Lcom/fimi/kernel/connect/usb/AOAConnect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    iget-object v3, v2, Lcom/fimi/kernel/connect/usb/AOAConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :try_start_1
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    iget-object v2, v2, Lcom/fimi/kernel/connect/usb/AOAConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    iget-object v2, v2, Lcom/fimi/kernel/connect/usb/AOAConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 198
    .local v0, "command":Lcom/fimi/kernel/connect/BaseCommand;
    if-eqz v0, :cond_2

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/fimi/kernel/connect/BaseCommand;->setLastSendTime(J)V

    .line 200
    sget-object v2, Lcom/fimi/kernel/connect/usb/AOAConnect$1;->$SwitchMap$com$fimi$kernel$connect$usb$LinkMsgType:[I

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getLinkMsgType()Lcom/fimi/kernel/connect/usb/LinkMsgType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/connect/usb/LinkMsgType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 220
    :cond_2
    :goto_2
    :pswitch_0
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-static {v2, v0}, Lcom/fimi/kernel/connect/usb/AOAConnect;->access$600(Lcom/fimi/kernel/connect/usb/AOAConnect;Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 224
    .end local v0    # "command":Lcom/fimi/kernel/connect/BaseCommand;
    :goto_3
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "command":Lcom/fimi/kernel/connect/BaseCommand;
    :pswitch_1
    :try_start_3
    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->isAddToSendQueue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-static {v2}, Lcom/fimi/kernel/connect/usb/AOAConnect;->access$300(Lcom/fimi/kernel/connect/usb/AOAConnect;)Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->addToSendList(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_2

    .line 207
    :pswitch_2
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-static {v2}, Lcom/fimi/kernel/connect/usb/AOAConnect;->access$400(Lcom/fimi/kernel/connect/usb/AOAConnect;)Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->addToSendList(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_2

    .line 213
    :pswitch_3
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-static {v2}, Lcom/fimi/kernel/connect/usb/AOAConnect;->access$500(Lcom/fimi/kernel/connect/usb/AOAConnect;)Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->addToSendList(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_2

    .line 222
    .end local v0    # "command":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_3
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-virtual {v2}, Lcom/fimi/kernel/connect/usb/AOAConnect;->sendSignal()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
