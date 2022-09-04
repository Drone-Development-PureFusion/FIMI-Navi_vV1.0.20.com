.class public Lorg/apache/mina/core/service/DefaultTransportMetadata;
.super Ljava/lang/Object;
.source "DefaultTransportMetadata.java"

# interfaces
.implements Lorg/apache/mina/core/service/TransportMetadata;


# instance fields
.field private final addressType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionless:Z

.field private final envelopeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fragmentation:Z

.field private final name:Ljava/lang/String;

.field private final providerName:Ljava/lang/String;

.field private final sessionConfigType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 4
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "connectionless"    # Z
    .param p4, "fragmentation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/Class",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            ">;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p5, "addressType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/net/SocketAddress;>;"
    .local p6, "sessionConfigType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/session/IoSessionConfig;>;"
    .local p7, "envelopeTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "providerName"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    if-nez p2, :cond_1

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "providerName is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_3
    if-nez p5, :cond_4

    .line 72
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "addressType"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_4
    if-nez p7, :cond_5

    .line 76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "envelopeTypes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_5
    array-length v2, p7

    if-nez v2, :cond_6

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "envelopeTypes is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_6
    if-nez p6, :cond_7

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sessionConfigType"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_7
    iput-object p1, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->providerName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->name:Ljava/lang/String;

    .line 89
    iput-boolean p3, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->connectionless:Z

    .line 90
    iput-boolean p4, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->fragmentation:Z

    .line 91
    iput-object p5, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->addressType:Ljava/lang/Class;

    .line 92
    iput-object p6, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->sessionConfigType:Ljava/lang/Class;

    .line 94
    new-instance v1, Lorg/apache/mina/util/IdentityHashSet;

    invoke-direct {v1}, Lorg/apache/mina/util/IdentityHashSet;-><init>()V

    .line 95
    .local v1, "newEnvelopeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Object;>;>;"
    array-length v3, p7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_8

    aget-object v0, p7, v2

    .line 96
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_8
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->envelopeTypes:Ljava/util/Set;

    .line 99
    return-void
.end method


# virtual methods
.method public getAddressType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->addressType:Ljava/lang/Class;

    return-object v0
.end method

.method public getEnvelopeTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->envelopeTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionConfigType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->sessionConfigType:Ljava/lang/Class;

    return-object v0
.end method

.method public hasFragmentation()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->fragmentation:Z

    return v0
.end method

.method public isConnectionless()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->connectionless:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/mina/core/service/DefaultTransportMetadata;->name:Ljava/lang/String;

    return-object v0
.end method
