.class public Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;
.super Ljava/lang/Thread;
.source "TcpConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/tcp/TcpConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriteThread"
.end annotation


# instance fields
.field private count:I

.field mOutput:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/fimi/kernel/connect/tcp/TcpConnect;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/tcp/TcpConnect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/tcp/TcpConnect;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    iget-object v2, v2, Lcom/fimi/kernel/connect/tcp/TcpConnect;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;->mOutput:Ljava/io/OutputStream;

    .line 150
    iget-object v2, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;->mOutput:Ljava/io/OutputStream;

    if-nez v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    invoke-static {v2}, Lcom/fimi/kernel/connect/tcp/TcpConnect;->access$100(Lcom/fimi/kernel/connect/tcp/TcpConnect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    invoke-static {v2}, Lcom/fimi/kernel/connect/tcp/TcpConnect;->access$200(Lcom/fimi/kernel/connect/tcp/TcpConnect;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    iget-object v2, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    invoke-static {v2}, Lcom/fimi/kernel/connect/tcp/TcpConnect;->access$200(Lcom/fimi/kernel/connect/tcp/TcpConnect;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;->this$0:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    invoke-static {v2}, Lcom/fimi/kernel/connect/tcp/TcpConnect;->access$200(Lcom/fimi/kernel/connect/tcp/TcpConnect;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/BaseCommand;

    .line 157
    .local v0, "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    const-string v2, "moweiru"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tcp write cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v5

    invoke-static {v5}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz v0, :cond_2

    .line 159
    iget-object v2, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 170
    .end local v0    # "cmd":Lcom/fimi/kernel/connect/BaseCommand;
    :cond_2
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

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "moweiru"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
