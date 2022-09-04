.class public Lorg/apache/mina/util/CircularQueue;
.super Ljava/util/AbstractList;
.source "CircularQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x4

.field private static final serialVersionUID:J = 0x376b7b7c7e9dd720L


# instance fields
.field private first:I

.field private full:Z

.field private final initialCapacity:I

.field private volatile items:[Ljava/lang/Object;

.field private last:I

.field private mask:I

.field private shrinkThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/CircularQueue;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 50
    iput v2, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 52
    iput v2, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    .line 66
    invoke-static {p1}, Lorg/apache/mina/util/CircularQueue;->normalizeCapacity(I)I

    move-result v0

    .line 67
    .local v0, "actualCapacity":I
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    .line 68
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    .line 69
    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    .line 70
    iput v2, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    .line 71
    return-void
.end method

.method private checkIndex(I)V
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 176
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    return-void
.end method

.method private decreaseSize()V
    .locals 2

    .prologue
    .line 191
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    .line 193
    return-void
.end method

.method private expandIfNeeded()V
    .locals 8

    .prologue
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    const/4 v7, 0x0

    .line 196
    iget-boolean v3, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v1, v3

    .line 199
    .local v1, "oldLen":I
    shl-int/lit8 v0, v1, 0x1

    .line 200
    .local v0, "newLen":I
    new-array v2, v0, [Ljava/lang/Object;

    .line 202
    .local v2, "tmp":[Ljava/lang/Object;
    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ge v3, v4, :cond_1

    .line 203
    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    :goto_0
    iput v7, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 210
    iput v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    .line 211
    iput-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    .line 212
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    .line 213
    ushr-int/lit8 v3, v0, 0x3

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    if-le v3, v4, :cond_0

    .line 214
    ushr-int/lit8 v3, v0, 0x3

    iput v3, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    .line 217
    .end local v0    # "newLen":I
    .end local v1    # "oldLen":I
    .end local v2    # "tmp":[Ljava/lang/Object;
    :cond_0
    return-void

    .line 205
    .restart local v0    # "newLen":I
    .restart local v1    # "oldLen":I
    .restart local v2    # "tmp":[Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v5, v1, v5

    invoke-static {v3, v4, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v4, v1, v4

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    invoke-static {v3, v7, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private getRealIndex(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 182
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private increaseSize()V
    .locals 2

    .prologue
    .line 186
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    .line 187
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    .line 188
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static normalizeCapacity(I)I
    .locals 1
    .param p0, "initialCapacity"    # I

    .prologue
    .line 77
    const/4 v0, 0x1

    .line 79
    .local v0, "actualCapacity":I
    :cond_0
    if-ge v0, p0, :cond_1

    .line 80
    shl-int/lit8 v0, v0, 0x1

    .line 81
    if-gez v0, :cond_0

    .line 82
    const/high16 v0, 0x40000000    # 2.0f

    .line 86
    :cond_1
    return v0
.end method

.method private shrinkIfNeeded()V
    .locals 9

    .prologue
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    const/4 v8, 0x0

    .line 220
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v2

    .line 221
    .local v2, "size":I
    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    if-gt v2, v4, :cond_1

    .line 223
    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v1, v4

    .line 224
    .local v1, "oldLen":I
    invoke-static {v2}, Lorg/apache/mina/util/CircularQueue;->normalizeCapacity(I)I

    move-result v0

    .line 225
    .local v0, "newLen":I
    if-ne v2, v0, :cond_0

    .line 226
    shl-int/lit8 v0, v0, 0x1

    .line 229
    :cond_0
    if-lt v0, v1, :cond_2

    .line 259
    .end local v0    # "newLen":I
    .end local v1    # "oldLen":I
    :cond_1
    :goto_0
    return-void

    .line 233
    .restart local v0    # "newLen":I
    .restart local v1    # "oldLen":I
    :cond_2
    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    if-ge v0, v4, :cond_3

    .line 234
    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    if-eq v1, v4, :cond_1

    .line 238
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->initialCapacity:I

    .line 241
    :cond_3
    new-array v3, v0, [Ljava/lang/Object;

    .line 244
    .local v3, "tmp":[Ljava/lang/Object;
    if-lez v2, :cond_4

    .line 245
    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ge v4, v5, :cond_5

    .line 246
    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iget v7, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int/2addr v6, v7

    invoke-static {v4, v5, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    :cond_4
    :goto_1
    iput v8, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 254
    iput v2, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    .line 255
    iput-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    .line 256
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    .line 257
    iput v8, p0, Lorg/apache/mina/util/CircularQueue;->shrinkThreshold:I

    goto :goto_0

    .line 248
    :cond_5
    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v6, v1, v6

    invoke-static {v4, v5, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v5, v1, v5

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    invoke-static {v4, v8, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 6
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    .local p2, "o":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    .line 279
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 280
    invoke-virtual {p0, p2}, Lorg/apache/mina/util/CircularQueue;->offer(Ljava/lang/Object;)Z

    .line 304
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    .line 285
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->expandIfNeeded()V

    .line 287
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result v0

    .line 290
    .local v0, "realIdx":I
    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ge v1, v2, :cond_1

    .line 291
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    :goto_1
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 303
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->increaseSize()V

    goto :goto_0

    .line 293
    :cond_1
    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    if-lt v0, v1, :cond_2

    .line 294
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v5

    .line 296
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 298
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/CircularQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    iput v2, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 101
    iput v2, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    .line 102
    iput-boolean v2, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    .line 103
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->shrinkIfNeeded()V

    .line 105
    :cond_0
    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    .line 149
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->expandIfNeeded()V

    .line 131
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    aput-object p1, v0, v1

    .line 132
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->increaseSize()V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 122
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    aget-object v0, v2, v3

    .line 114
    .local v0, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    aput-object v1, v2, v3

    .line 115
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->decreaseSize()V

    .line 117
    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ne v1, v2, :cond_1

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iput v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    .line 121
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->shrinkIfNeeded()V

    goto :goto_0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 8
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    const/4 v5, 0x0

    .line 309
    if-nez p1, :cond_0

    .line 310
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 335
    :goto_0
    return-object v1

    .line 313
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    .line 315
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result v0

    .line 316
    .local v0, "realIdx":I
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 319
    .local v1, "removed":Ljava/lang/Object;
    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    if-ge v2, v3, :cond_1

    .line 320
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v6, v0, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    :goto_1
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 332
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->decreaseSize()V

    .line 334
    invoke-direct {p0}, Lorg/apache/mina/util/CircularQueue;->shrinkIfNeeded()V

    goto :goto_0

    .line 322
    :cond_1
    iget v2, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    if-lt v0, v2, :cond_2

    .line 323
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int v6, v0, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 325
    :cond_2
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v2, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    .line 327
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    iget-object v4, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    iget v5, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    array-length v6, v6

    iget v7, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    .local p2, "o":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->checkIndex(I)V

    .line 271
    invoke-direct {p0, p1}, Lorg/apache/mina/util/CircularQueue;->getRealIndex(I)I

    move-result v1

    .line 272
    .local v1, "realIdx":I
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aget-object v0, v2, v1

    .line 273
    .local v0, "old":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/mina/util/CircularQueue;->items:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 274
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 159
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    iget-boolean v0, p0, Lorg/apache/mina/util/CircularQueue;->full:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->capacity()I

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 163
    :cond_0
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    if-lt v0, v1, :cond_1

    .line 164
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 167
    :cond_1
    iget v0, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/mina/util/CircularQueue;, "Lorg/apache/mina/util/CircularQueue<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->first:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->last:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/util/CircularQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/util/CircularQueue;->mask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
