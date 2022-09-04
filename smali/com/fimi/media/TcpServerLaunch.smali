.class public Lcom/fimi/media/TcpServerLaunch;
.super Ljava/lang/Thread;
.source "TcpServerLaunch.java"


# static fields
.field private static logView:Landroid/widget/TextView;

.field public static mHandler:Landroid/os/Handler;

.field static s:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/fimi/media/TcpServerLaunch;->s:Ljava/lang/StringBuffer;

    .line 23
    new-instance v0, Lcom/fimi/media/TcpServerLaunch$1;

    invoke-direct {v0}, Lcom/fimi/media/TcpServerLaunch$1;-><init>()V

    sput-object v0, Lcom/fimi/media/TcpServerLaunch;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "logView"    # Landroid/widget/TextView;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    sput-object p1, Lcom/fimi/media/TcpServerLaunch;->logView:Landroid/widget/TextView;

    .line 20
    return-void
.end method

.method static synthetic access$000()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/fimi/media/TcpServerLaunch;->logView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public main()V
    .locals 6

    .prologue
    .line 41
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    const v3, 0xd431

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    .line 43
    .local v2, "ss":Ljava/net/ServerSocket;
    :goto_0
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 44
    .local v1, "s":Ljava/net/Socket;
    sget-object v3, Lcom/fimi/media/TcpServerLaunch;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const-string v5, "start"

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 45
    new-instance v3, Lcom/fimi/media/TcpServer;

    invoke-direct {v3, v1}, Lcom/fimi/media/TcpServer;-><init>(Ljava/net/Socket;)V

    invoke-virtual {v3}, Lcom/fimi/media/TcpServer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v1    # "s":Ljava/net/Socket;
    .end local v2    # "ss":Ljava/net/ServerSocket;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/fimi/media/TcpServerLaunch;->main()V

    .line 37
    return-void
.end method
