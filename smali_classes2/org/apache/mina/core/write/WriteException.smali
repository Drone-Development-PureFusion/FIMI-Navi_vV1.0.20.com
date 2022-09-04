.class public Lorg/apache/mina/core/write/WriteException;
.super Ljava/io/IOException;
.source "WriteException.java"


# static fields
.field private static final serialVersionUID:J = -0x39ee796f1d098c25L


# instance fields
.field private final requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 96
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p3}, Lorg/apache/mina/core/write/WriteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 120
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 130
    invoke-virtual {p0, p2}, Lorg/apache/mina/core/write/WriteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 131
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 51
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p3}, Lorg/apache/mina/core/write/WriteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 75
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 85
    invoke-virtual {p0, p2}, Lorg/apache/mina/core/write/WriteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 86
    invoke-static {p1}, Lorg/apache/mina/core/write/WriteException;->asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    .line 87
    return-void
.end method

.method private static asRequestList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    if-nez p0, :cond_0

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "requests"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "requests is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_1
    new-instance v0, Lorg/apache/mina/util/MapBackedSet;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v2}, Lorg/apache/mina/util/MapBackedSet;-><init>(Ljava/util/Map;)V

    .line 160
    .local v0, "newRequests":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    .line 161
    .local v1, "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {v1}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v1    # "r":Lorg/apache/mina/core/write/WriteRequest;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static asRequestList(Lorg/apache/mina/core/write/WriteRequest;)Ljava/util/List;
    .locals 3
    .param p0, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    if-nez p0, :cond_0

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v0, "requests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-interface {p0}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/write/WriteRequest;

    return-object v0
.end method

.method public getRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/mina/core/write/WriteException;->requests:Ljava/util/List;

    return-object v0
.end method
