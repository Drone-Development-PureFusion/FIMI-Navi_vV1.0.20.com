.class public Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;
.super Ljava/lang/Object;
.source "DefaultIoEventSizeEstimator.java"

# interfaces
.implements Lorg/apache/mina/filter/executor/IoEventSizeEstimator;


# instance fields
.field private final class2size:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private static align(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 148
    rem-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    .line 149
    div-int/lit8 p0, p0, 0x8

    .line 150
    add-int/lit8 p0, p0, 0x1

    .line 151
    mul-int/lit8 p0, p0, 0x8

    .line 154
    :cond_0
    return p0
.end method

.method private estimateSize(Ljava/lang/Class;Ljava/util/Set;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "visitedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v6, 0x0

    .line 101
    iget-object v7, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 103
    .local v4, "objectSize":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 104
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    if-eqz p2, :cond_2

    .line 108
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v0, v6

    .line 109
    goto :goto_0

    .line 112
    :cond_2
    new-instance p2, Ljava/util/HashSet;

    .end local p2    # "visitedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 115
    .restart local p2    # "visitedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_3
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    const/16 v0, 0x8

    .line 119
    .local v0, "answer":I
    move-object v1, p1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_6

    .line 120
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 122
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v8, v3

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v2, v3, v7

    .line 123
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_4

    .line 122
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Class;Ljava/util/Set;)I

    move-result v9

    add-int/2addr v0, v9

    goto :goto_3

    .line 119
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 132
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    :cond_6
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 135
    invoke-static {v0}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->align(I)I

    move-result v0

    .line 138
    iget-object v6, p0, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 140
    .local v5, "tmpAnswer":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public estimateSize(Ljava/lang/Object;)I
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/16 v2, 0x8

    .line 97
    .end local p1    # "message":Ljava/lang/Object;
    :goto_0
    return v2

    .line 83
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Class;Ljava/util/Set;)I

    move-result v2

    add-int/lit8 v0, v2, 0x8

    .line 85
    .local v0, "answer":I
    instance-of v2, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v2, :cond_2

    .line 86
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    .end local p1    # "message":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    .line 97
    :cond_1
    :goto_1
    invoke-static {v0}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->align(I)I

    move-result v2

    goto :goto_0

    .line 87
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Lorg/apache/mina/core/write/WriteRequest;

    if-eqz v2, :cond_3

    .line 88
    check-cast p1, Lorg/apache/mina/core/write/WriteRequest;

    .end local p1    # "message":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 89
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 90
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "message":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_1

    .line 91
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, Ljava/lang/Iterable;

    if-eqz v2, :cond_1

    .line 92
    check-cast p1, Ljava/lang/Iterable;

    .end local p1    # "message":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 93
    .local v1, "m":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 94
    goto :goto_2
.end method

.method public estimateSize(Lorg/apache/mina/core/session/IoEvent;)I
    .locals 2
    .param p1, "event"    # Lorg/apache/mina/core/session/IoEvent;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/executor/DefaultIoEventSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
