.class Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;
.super Ljava/lang/Thread;
.source "AOAConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/usb/AOAConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/connect/usb/AOAConnect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/usb/AOAConnect;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 153
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 154
    iget-object v4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    iget-object v4, v4, Lcom/fimi/kernel/connect/usb/AOAConnect;->inputStream:Ljava/io/FileInputStream;

    if-nez v4, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const/16 v4, 0x800

    new-array v0, v4, [B

    .line 158
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 160
    .local v3, "len":I
    :cond_2
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-static {v4}, Lcom/fimi/kernel/connect/usb/AOAConnect;->access$000(Lcom/fimi/kernel/connect/usb/AOAConnect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    iget-object v4, v4, Lcom/fimi/kernel/connect/usb/AOAConnect;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 166
    new-array v1, v3, [B

    .line 167
    .local v1, "data":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget-object v4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    iget-object v4, v4, Lcom/fimi/kernel/connect/usb/AOAConnect;->resultListener:Lcom/fimi/kernel/connect/ResultListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-static {v4}, Lcom/fimi/kernel/connect/usb/AOAConnect;->access$000(Lcom/fimi/kernel/connect/usb/AOAConnect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    iget-object v4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    iget-object v4, v4, Lcom/fimi/kernel/connect/usb/AOAConnect;->resultListener:Lcom/fimi/kernel/connect/ResultListener;

    invoke-interface {v4, v1}, Lcom/fimi/kernel/connect/ResultListener;->messageReceived([B)V

    .line 171
    :cond_3
    iget-object v4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-static {v4}, Lcom/fimi/kernel/connect/usb/AOAConnect;->access$100(Lcom/fimi/kernel/connect/usb/AOAConnect;)Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-static {v4}, Lcom/fimi/kernel/connect/usb/AOAConnect;->access$000(Lcom/fimi/kernel/connect/usb/AOAConnect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    iget-object v4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-static {v4}, Lcom/fimi/kernel/connect/usb/AOAConnect;->access$100(Lcom/fimi/kernel/connect/usb/AOAConnect;)Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->checkJsonCmdSendTime()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 178
    .end local v1    # "data":[B
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    iget-object v4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-static {v4}, Lcom/fimi/kernel/connect/usb/AOAConnect;->access$200(Lcom/fimi/kernel/connect/usb/AOAConnect;)Lcom/fimi/kernel/connect/usb/IUSBStatusListener;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/fimi/kernel/connect/usb/IUSBStatusListener;->onAoaIoError(I)V

    goto :goto_0
.end method
