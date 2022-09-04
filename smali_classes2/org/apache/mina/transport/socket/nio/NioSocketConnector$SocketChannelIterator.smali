.class Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;
.super Ljava/lang/Object;
.source "NioSocketConnector.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/socket/nio/NioSocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketChannelIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/nio/channels/SocketChannel;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "selectedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/channels/SelectionKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;->i:Ljava/util/Iterator;

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/mina/transport/socket/nio/NioSocketConnector$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Lorg/apache/mina/transport/socket/nio/NioSocketConnector$1;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;->next()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/channels/SocketChannel;
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 329
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 337
    return-void
.end method
