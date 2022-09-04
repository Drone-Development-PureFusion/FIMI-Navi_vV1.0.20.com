.class public Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;
.super Ljava/lang/Thread;
.source "TcpConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/tcp/TcpConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadThread"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/fimi/kernel/connect/tcp/TcpConnect;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/tcp/TcpConnect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/tcp/TcpConnect;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    iget-object v3, v3, Lcom/fimi/kernel/connect/tcp/TcpConnect;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;->mInputStream:Ljava/io/InputStream;

    .line 115
    iget-object v3, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;->mInputStream:Ljava/io/InputStream;

    if-nez v3, :cond_0

    .line 136
    :goto_0
    return-void

    .line 118
    :cond_0
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 121
    .local v0, "buffer":[B
    :goto_1
    iget-object v3, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 124
    iget-object v3, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;->this$0:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    invoke-static {v3}, Lcom/fimi/kernel/connect/tcp/TcpConnect;->access$000(Lcom/fimi/kernel/connect/tcp/TcpConnect;)Lcom/fimi/kernel/connect/ResultListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/fimi/kernel/connect/ResultListener;->messageReceived([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 132
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 133
    .local v2, "e1":Ljava/io/IOException;
    const-string v3, "moweiru==>"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
