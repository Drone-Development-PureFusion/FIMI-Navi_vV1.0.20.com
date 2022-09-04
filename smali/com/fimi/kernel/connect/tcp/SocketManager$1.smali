.class Lcom/fimi/kernel/connect/tcp/SocketManager$1;
.super Ljava/lang/Object;
.source "SocketManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/connect/tcp/SocketManager;->connect()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/connect/tcp/SocketManager;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/connect/tcp/SocketManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/tcp/SocketManager;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager$1;->this$0:Lcom/fimi/kernel/connect/tcp/SocketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 77
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/fimi/kernel/connect/tcp/SocketManager$1;->this$0:Lcom/fimi/kernel/connect/tcp/SocketManager;

    invoke-static {v3}, Lcom/fimi/kernel/connect/tcp/SocketManager;->access$000(Lcom/fimi/kernel/connect/tcp/SocketManager;)Lcom/fimi/kernel/connect/tcp/SocketOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/kernel/connect/tcp/SocketOption;->getReceiveBufferSize()I

    move-result v3

    new-array v1, v3, [B

    .line 79
    .local v1, "input":[B
    :try_start_0
    iget-object v3, p0, Lcom/fimi/kernel/connect/tcp/SocketManager$1;->this$0:Lcom/fimi/kernel/connect/tcp/SocketManager;

    invoke-static {v3}, Lcom/fimi/kernel/connect/tcp/SocketManager;->access$100(Lcom/fimi/kernel/connect/tcp/SocketManager;)Ljava/io/DataInputStream;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    .line 80
    .local v2, "readLenght":I
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 82
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/fimi/kernel/connect/tcp/SocketManager$1;->this$0:Lcom/fimi/kernel/connect/tcp/SocketManager;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/fimi/kernel/connect/tcp/SocketManager;->access$202(Lcom/fimi/kernel/connect/tcp/SocketManager;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v2    # "readLenght":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/fimi/kernel/connect/tcp/SocketManager$1;->this$0:Lcom/fimi/kernel/connect/tcp/SocketManager;

    invoke-static {v3, v6}, Lcom/fimi/kernel/connect/tcp/SocketManager;->access$202(Lcom/fimi/kernel/connect/tcp/SocketManager;Z)Z

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
