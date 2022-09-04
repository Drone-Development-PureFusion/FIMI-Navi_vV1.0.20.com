.class public final Lorg/apache/mina/core/IoUtil;
.super Ljava/lang/Object;
.source "IoUtil.java"


# static fields
.field private static final EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/core/session/IoSession;

    sput-object v0, Lorg/apache/mina/core/IoUtil;->EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method public static await(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFuture;

    .line 130
    .local v0, "f":Lorg/apache/mina/core/future/IoFuture;
    invoke-interface {v0}, Lorg/apache/mina/core/future/IoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    goto :goto_0

    .line 132
    .end local v0    # "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_0
    return-void
.end method

.method public static await(Ljava/lang/Iterable;J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/mina/core/IoUtil;->await0(Ljava/lang/Iterable;JZ)Z

    move-result v0

    return v0
.end method

.method public static await(Ljava/lang/Iterable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/core/IoUtil;->await(Ljava/lang/Iterable;J)Z

    move-result v0

    return v0
.end method

.method private static await0(Ljava/lang/Iterable;JZ)Z
    .locals 13
    .param p1, "timeoutMillis"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;JZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    const-wide/16 v8, 0x0

    .line 163
    cmp-long v3, p1, v8

    if-gtz v3, :cond_4

    move-wide v4, v8

    .line 164
    .local v4, "startTime":J
    :goto_0
    move-wide v6, p1

    .line 166
    .local v6, "waitTime":J
    const/4 v2, 0x1

    .line 167
    .local v2, "lastComplete":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 168
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/mina/core/future/IoFuture;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFuture;

    .line 171
    .local v0, "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_1
    if-eqz p3, :cond_5

    .line 172
    invoke-interface {v0, v6, v7}, Lorg/apache/mina/core/future/IoFuture;->await(J)Z

    move-result v2

    .line 177
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-long v6, p1, v10

    .line 179
    if-nez v2, :cond_2

    cmp-long v3, v6, v8

    if-gtz v3, :cond_6

    .line 184
    :cond_2
    :goto_2
    cmp-long v3, v6, v8

    if-gtz v3, :cond_0

    .line 189
    .end local v0    # "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_3
    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    :goto_3
    return v3

    .line 163
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/mina/core/future/IoFuture;>;"
    .end local v2    # "lastComplete":Z
    .end local v4    # "startTime":J
    .end local v6    # "waitTime":J
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    .line 174
    .restart local v0    # "f":Lorg/apache/mina/core/future/IoFuture;
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/mina/core/future/IoFuture;>;"
    .restart local v2    # "lastComplete":Z
    .restart local v4    # "startTime":J
    .restart local v6    # "waitTime":J
    :cond_5
    invoke-interface {v0, v6, v7}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    move-result v2

    goto :goto_1

    .line 182
    :cond_6
    if-eqz v2, :cond_1

    goto :goto_2

    .line 189
    .end local v0    # "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_7
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public static awaitUninterruptably(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFuture;

    .line 136
    .local v0, "f":Lorg/apache/mina/core/future/IoFuture;
    invoke-interface {v0}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    goto :goto_0

    .line 138
    .end local v0    # "f":Lorg/apache/mina/core/future/IoFuture;
    :cond_0
    return-void
.end method

.method public static awaitUninterruptibly(Ljava/lang/Iterable;J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lorg/apache/mina/core/IoUtil;->await0(Ljava/lang/Iterable;JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public static awaitUninterruptibly(Ljava/lang/Iterable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/mina/core/future/IoFuture;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/core/IoUtil;->awaitUninterruptibly(Ljava/lang/Iterable;J)Z

    move-result v0

    return v0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "sessions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/mina/core/session/IoSession;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    .line 69
    return-object v0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/session/IoSession;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    .line 54
    return-object v0
.end method

.method public static broadcast(Ljava/lang/Object;Ljava/util/Iterator;)Ljava/util/List;
    .locals 1
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "sessions":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/mina/core/session/IoSession;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    invoke-static {p0, p1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V

    .line 84
    return-object v0
.end method

.method public static varargs broadcast(Ljava/lang/Object;[Lorg/apache/mina/core/session/IoSession;)Ljava/util/List;
    .locals 5
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "sessions"    # [Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    if-nez p1, :cond_0

    .line 98
    sget-object p1, Lorg/apache/mina/core/IoUtil;->EMPTY_SESSIONS:[Lorg/apache/mina/core/session/IoSession;

    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    instance-of v3, p0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v3, :cond_1

    .line 103
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, p1, v3

    .local v1, "s":Lorg/apache/mina/core/session/IoSession;
    move-object v2, p0

    .line 104
    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 107
    .end local v1    # "s":Lorg/apache/mina/core/session/IoSession;
    :cond_1
    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 108
    .restart local v1    # "s":Lorg/apache/mina/core/session/IoSession;
    invoke-interface {v1, p0}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    .end local v1    # "s":Lorg/apache/mina/core/session/IoSession;
    :cond_2
    return-object v0
.end method

.method private static broadcast(Ljava/lang/Object;Ljava/util/Iterator;Ljava/util/Collection;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "sessions":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/mina/core/session/IoSession;>;"
    .local p2, "answer":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/future/WriteFuture;>;"
    instance-of v1, p0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_0

    .line 116
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    .local v0, "s":Lorg/apache/mina/core/session/IoSession;
    move-object v1, p0

    .line 118
    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->duplicate()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v0    # "s":Lorg/apache/mina/core/session/IoSession;
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    .line 123
    .restart local v0    # "s":Lorg/apache/mina/core/session/IoSession;
    invoke-interface {v0, p0}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    .end local v0    # "s":Lorg/apache/mina/core/session/IoSession;
    :cond_1
    return-void
.end method
