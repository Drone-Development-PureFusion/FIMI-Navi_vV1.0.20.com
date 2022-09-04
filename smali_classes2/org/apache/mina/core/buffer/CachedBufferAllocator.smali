.class public Lorg/apache/mina/core/buffer/CachedBufferAllocator;
.super Ljava/lang/Object;
.source "CachedBufferAllocator.java"

# interfaces
.implements Lorg/apache/mina/core/buffer/IoBufferAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CACHED_BUFFER_SIZE:I = 0x40000

.field private static final DEFAULT_MAX_POOL_SIZE:I = 0x8


# instance fields
.field private final directBuffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final heapBuffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final maxCachedBufferSize:I

.field private final maxPoolSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    const/16 v0, 0x8

    const/high16 v1, 0x40000

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;-><init>(II)V

    .line 80
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "maxPoolSize"    # I
    .param p2, "maxCachedBufferSize"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-gez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxPoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    if-gez p2, :cond_1

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCachedBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    iput p1, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    .line 101
    iput p2, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    .line 103
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$1;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)V

    iput-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    .line 110
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$2;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)V

    iput-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .prologue
    .line 60
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)Ljava/lang/ThreadLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)Ljava/lang/ThreadLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/mina/core/buffer/CachedBufferAllocator;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/buffer/CachedBufferAllocator;

    .prologue
    .line 60
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    return v0
.end method


# virtual methods
.method public allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .param p1, "requestedCapacity"    # I
    .param p2, "direct"    # Z

    .prologue
    .line 149
    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->normalizeCapacity(I)I

    move-result v0

    .line 152
    .local v0, "actualCapacity":I
    iget v3, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    if-le v0, v3, :cond_1

    .line 153
    if-eqz p2, :cond_0

    .line 154
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 183
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 184
    return-object v1

    .line 156
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .restart local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_0

    .line 161
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    if-eqz p2, :cond_2

    .line 162
    iget-object v3, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->directBuffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    .line 168
    .local v2, "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 170
    .restart local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    if-eqz v1, :cond_3

    .line 171
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 172
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 173
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 164
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v2    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    :cond_2
    iget-object v3, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->heapBuffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    .restart local v2    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;"
    goto :goto_1

    .line 175
    .restart local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_3
    if-eqz p2, :cond_4

    .line 176
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    goto :goto_0

    .line 178
    :cond_4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method public allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "direct"    # Z

    .prologue
    .line 188
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public getMaxCachedBufferSize()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxCachedBufferSize:I

    return v0
.end method

.method public getMaxPoolSize()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/apache/mina/core/buffer/CachedBufferAllocator;->maxPoolSize:I

    return v0
.end method

.method newPoolMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v1, "poolMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Queue<Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x1f

    if-ge v0, v2, :cond_0

    .line 139
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-object v1
.end method

.method public wrap(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "nioBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 192
    new-instance v0, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/core/buffer/CachedBufferAllocator$CachedBuffer;-><init>(Lorg/apache/mina/core/buffer/CachedBufferAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
