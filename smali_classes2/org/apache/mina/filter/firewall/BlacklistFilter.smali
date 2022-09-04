.class public Lorg/apache/mina/filter/firewall/BlacklistFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "BlacklistFilter.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final blacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    return-void
.end method

.method private blockSession(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 242
    sget-object v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Remote address in the blacklist; closing."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 243
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 244
    return-void
.end method

.method private isBlocked(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 247
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 249
    .local v1, "remoteAddress":Ljava/net/SocketAddress;
    instance-of v3, v1, Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_1

    .line 250
    check-cast v1, Ljava/net/InetSocketAddress;

    .end local v1    # "remoteAddress":Ljava/net/SocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 253
    .local v0, "address":Ljava/net/InetAddress;
    iget-object v3, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/filter/firewall/Subnet;

    .line 254
    .local v2, "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    invoke-virtual {v2, v0}, Lorg/apache/mina/filter/firewall/Subnet;->inSubnet(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    const/4 v3, 0x1

    .line 260
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adress to block can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    new-instance v0, Lorg/apache/mina/filter/firewall/Subnet;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    .line 140
    return-void
.end method

.method public block(Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 2
    .param p1, "subnet"    # Lorg/apache/mina/filter/firewall/Subnet;

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subnet can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;

    .prologue
    .line 223
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 183
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public setBlacklist(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/InetAddress;>;"
    if-nez p1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "addresses"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 105
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 106
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Ljava/net/InetAddress;)V

    goto :goto_0

    .line 108
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_1
    return-void
.end method

.method public setBlacklist([Ljava/net/InetAddress;)V
    .locals 4
    .param p1, "addresses"    # [Ljava/net/InetAddress;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "addresses"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 64
    aget-object v0, p1, v1

    .line 65
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Ljava/net/InetAddress;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_1
    return-void
.end method

.method public setSubnetBlacklist(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "subnets":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/mina/filter/firewall/Subnet;>;"
    if-nez p1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Subnets must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 124
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/firewall/Subnet;

    .line 125
    .local v0, "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    goto :goto_0

    .line 127
    .end local v0    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    :cond_1
    return-void
.end method

.method public setSubnetBlacklist([Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 3
    .param p1, "subnets"    # [Lorg/apache/mina/filter/firewall/Subnet;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Subnets must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 83
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 84
    .local v0, "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    :cond_1
    return-void
.end method

.method public unblock(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adress to unblock can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    new-instance v0, Lorg/apache/mina/filter/firewall/Subnet;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->unblock(Lorg/apache/mina/filter/firewall/Subnet;)V

    .line 166
    return-void
.end method

.method public unblock(Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 2
    .param p1, "subnet"    # Lorg/apache/mina/filter/firewall/Subnet;

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subnet can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method
