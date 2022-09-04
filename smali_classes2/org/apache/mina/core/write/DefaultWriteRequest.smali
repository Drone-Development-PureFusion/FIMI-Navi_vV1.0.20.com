.class public Lorg/apache/mina/core/write/DefaultWriteRequest;
.super Ljava/lang/Object;
.source "DefaultWriteRequest.java"

# interfaces
.implements Lorg/apache/mina/core/write/WriteRequest;


# static fields
.field public static final EMPTY_MESSAGE:[B

.field private static final UNUSED_FUTURE:Lorg/apache/mina/core/future/WriteFuture;


# instance fields
.field private final destination:Ljava/net/SocketAddress;

.field private final future:Lorg/apache/mina/core/future/WriteFuture;

.field private final message:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/mina/core/write/DefaultWriteRequest;->EMPTY_MESSAGE:[B

    .line 39
    new-instance v0, Lorg/apache/mina/core/write/DefaultWriteRequest$1;

    invoke-direct {v0}, Lorg/apache/mina/core/write/DefaultWriteRequest$1;-><init>()V

    sput-object v0, Lorg/apache/mina/core/write/DefaultWriteRequest;->UNUSED_FUTURE:Lorg/apache/mina/core/future/WriteFuture;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "future"    # Lorg/apache/mina/core/future/WriteFuture;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "future"    # Lorg/apache/mina/core/future/WriteFuture;
    .param p3, "destination"    # Ljava/net/SocketAddress;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    if-nez p2, :cond_1

    .line 146
    sget-object p2, Lorg/apache/mina/core/write/DefaultWriteRequest;->UNUSED_FUTURE:Lorg/apache/mina/core/future/WriteFuture;

    .line 149
    :cond_1
    iput-object p1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    .line 150
    iput-object p2, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->future:Lorg/apache/mina/core/future/WriteFuture;

    .line 151
    iput-object p3, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->destination:Ljava/net/SocketAddress;

    .line 152
    return-void
.end method


# virtual methods
.method public getDestination()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->destination:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getFuture()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->future:Lorg/apache/mina/core/future/WriteFuture;

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 0

    .prologue
    .line 163
    return-object p0
.end method

.method public isEncoded()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WriteRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "CLOSE_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 181
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/write/DefaultWriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v1

    if-nez v1, :cond_1

    .line 182
    iget-object v1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/write/DefaultWriteRequest;->message:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0}, Lorg/apache/mina/core/write/DefaultWriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
