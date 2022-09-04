.class public Lcom/fimi/kernel/connect/SocketOption;
.super Ljava/lang/Object;
.source "SocketOption.java"


# instance fields
.field private bufferSize:I

.field private charSet:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private isAutoReconnect:Z

.field private outTime:I

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x2800

    iput v0, p0, Lcom/fimi/kernel/connect/SocketOption;->bufferSize:I

    .line 15
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/fimi/kernel/connect/SocketOption;->charSet:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/SocketOption;->isAutoReconnect:Z

    .line 30
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/fimi/kernel/connect/SocketOption;->outTime:I

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/fimi/kernel/connect/SocketOption;->bufferSize:I

    return v0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/kernel/connect/SocketOption;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/kernel/connect/SocketOption;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getOutTime()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/fimi/kernel/connect/SocketOption;->outTime:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/fimi/kernel/connect/SocketOption;->port:I

    return v0
.end method

.method public isAutoReconnect()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/fimi/kernel/connect/SocketOption;->isAutoReconnect:Z

    return v0
.end method

.method public setAutoReconnect(Z)V
    .locals 0
    .param p1, "autoReconnect"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/fimi/kernel/connect/SocketOption;->isAutoReconnect:Z

    .line 54
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/fimi/kernel/connect/SocketOption;->bufferSize:I

    .line 38
    return-void
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "charSet"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fimi/kernel/connect/SocketOption;->charSet:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fimi/kernel/connect/SocketOption;->host:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setOutTime(I)V
    .locals 0
    .param p1, "outTime"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/fimi/kernel/connect/SocketOption;->outTime:I

    .line 78
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/fimi/kernel/connect/SocketOption;->port:I

    .line 70
    return-void
.end method
