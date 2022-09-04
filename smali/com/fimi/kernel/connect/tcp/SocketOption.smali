.class public Lcom/fimi/kernel/connect/tcp/SocketOption;
.super Ljava/lang/Object;
.source "SocketOption.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final RECEIVE_BUFFER_SIZE:I = 0x2800


# instance fields
.field private charSet:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private isAutoReconnect:Z

.field private port:I

.field private receiveBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->charSet:Ljava/lang/String;

    .line 38
    const/16 v0, 0x2800

    iput v0, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->receiveBufferSize:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->isAutoReconnect:Z

    return-void
.end method


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->port:I

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->receiveBufferSize:I

    return v0
.end method

.method public isAutoReconnect()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->isAutoReconnect:Z

    return v0
.end method

.method public setAutoReconnect(Z)V
    .locals 0
    .param p1, "autoReconnect"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->isAutoReconnect:Z

    .line 67
    return-void
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "charSet"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->charSet:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->host:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->port:I

    .line 26
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0
    .param p1, "receiveBufferSize"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/fimi/kernel/connect/tcp/SocketOption;->receiveBufferSize:I

    .line 46
    return-void
.end method
