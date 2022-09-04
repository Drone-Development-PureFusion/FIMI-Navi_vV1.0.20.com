.class public final Lorg/apache/mina/util/byteaccess/CompositeByteArray;
.super Lorg/apache/mina/util/byteaccess/AbstractByteArray;
.source "CompositeByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;
    }
.end annotation


# instance fields
.field private final bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

.field private final byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

.field private order:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V
    .locals 1
    .param p1, "byteArrayFactory"    # Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;-><init>()V

    .line 83
    new-instance v0, Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-direct {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    .line 110
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/util/byteaccess/CompositeByteArray;II)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->checkBounds(II)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayFactory;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method private addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 3
    .param p1, "ba"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 432
    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add byte array that doesn\'t start from 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    if-nez v0, :cond_2

    .line 437
    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    .line 441
    :cond_1
    return-void

    .line 438
    :cond_2
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add byte array with different byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkBounds(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "accessSize"    # I

    .prologue
    .line 257
    move v0, p1

    .line 258
    .local v0, "lower":I
    add-int v1, p1, p2

    .line 260
    .local v1, "upper":I
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 261
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " less than start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 265
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " greater than length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_1
    return-void
.end method


# virtual methods
.method public addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1
    .param p1, "ba"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 133
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 134
    return-void
.end method

.method public addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1
    .param p1, "ba"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addHook(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 230
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 231
    return-void
.end method

.method public cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V

    return-object v0
.end method

.method public cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 348
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V

    return-object v0
.end method

.method public cursor(ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1
    .param p1, "index"    # I
    .param p2, "listener"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .prologue
    .line 370
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    return-object v0
.end method

.method public cursor(Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1
    .param p1, "listener"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .prologue
    .line 359
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    return-object v0
.end method

.method public first()I
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte()I

    move-result v0

    return v0
.end method

.method public free()V
    .locals 2

    .prologue
    .line 249
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .line 251
    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->free()V

    .line 252
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    goto :goto_0

    .line 254
    .end local v0    # "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    :cond_0
    return-void
.end method

.method public get(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v0

    return v0
.end method

.method public get(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 399
    return-void
.end method

.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 542
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getChar()C

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFirst()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getFloat()F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v0

    return v0
.end method

.method public getIoBuffers()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 292
    :cond_0
    return-object v2

    .line 277
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v2, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/buffer/IoBuffer;>;"
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    .line 280
    .local v1, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray;->getIoBuffers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 281
    .local v0, "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    .end local v0    # "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->hasNextNode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray;->getIoBuffers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 288
    .restart local v0    # "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getShort()S

    move-result v0

    return v0
.end method

.method public getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 9

    .prologue
    .line 299
    iget-object v7, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    if-nez v7, :cond_0

    .line 300
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Can\'t get single buffer from CompositeByteArray unless it has a ByteArrayFactory."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 304
    :cond_0
    iget-object v7, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v7}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 305
    iget-object v7, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lorg/apache/mina/util/byteaccess/ByteArrayFactory;->create(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    .line 306
    .local v1, "ba":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 334
    :goto_0
    return-object v2

    .line 309
    .end local v1    # "ba":Lorg/apache/mina/util/byteaccess/ByteArray;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v8

    sub-int v0, v7, v8

    .line 312
    .local v0, "actualLength":I
    iget-object v7, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v7}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v5

    .line 313
    .local v5, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    .line 315
    .restart local v1    # "ba":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v7

    if-ne v7, v0, :cond_2

    .line 316
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    goto :goto_0

    .line 321
    :cond_2
    iget-object v7, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    invoke-interface {v7, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayFactory;->create(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v6

    .line 322
    .local v6, "target":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-interface {v6}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 323
    .local v2, "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v4

    .line 324
    .local v4, "cursor":Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    invoke-interface {v4, v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 326
    :goto_1
    iget-object v7, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v7}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 327
    iget-object v7, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v7}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v5

    .line 328
    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v3

    .line 329
    .local v3, "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    iget-object v7, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v7}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 330
    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray;->free()V

    goto :goto_1

    .line 333
    .end local v3    # "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    :cond_3
    iget-object v7, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v7, v6}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_0
.end method

.method public last()I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte()I

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Byte order not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)V
    .locals 2
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 457
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 458
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order:Ljava/nio/ByteOrder;

    .line 460
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->hasNextNode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->order(Ljava/nio/ByteOrder;)V

    .line 461
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    goto :goto_0

    .line 466
    .end local v0    # "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    :cond_1
    return-void
.end method

.method public put(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(B)V

    .line 392
    return-void
.end method

.method public put(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 406
    return-void
.end method

.method public putChar(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "c"    # C

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putChar(C)V

    .line 550
    return-void
.end method

.method public putDouble(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "d"    # D

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putDouble(D)V

    .line 536
    return-void
.end method

.method public putFloat(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "f"    # F

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putFloat(F)V

    .line 522
    return-void
.end method

.method public putInt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "i"    # I

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putInt(I)V

    .line 494
    return-void
.end method

.method public putLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "l"    # J

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putLong(J)V

    .line 508
    return-void
.end method

.method public putShort(IS)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # S

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putShort(S)V

    .line 480
    return-void
.end method

.method public removeFirst()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .line 144
    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    goto :goto_0
.end method

.method public removeLast()Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 2

    .prologue
    .line 240
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->bas:Lorg/apache/mina/util/byteaccess/ByteArrayList;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .line 242
    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    goto :goto_0
.end method

.method public removeTo(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 11
    .param p1, "index"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v10

    if-lt p1, v10, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v10

    if-le p1, v10, :cond_1

    .line 159
    :cond_0
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v10}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v10

    .line 163
    :cond_1
    new-instance v8, Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iget-object v10, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->byteArrayFactory:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    invoke-direct {v8, v10}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    .line 164
    .local v8, "prefix":Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v10

    sub-int v9, p1, v10

    .line 166
    .local v9, "remaining":I
    :goto_0
    if-lez v9, :cond_3

    .line 167
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeFirst()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v5

    .line 169
    .local v5, "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-interface {v5}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v10

    if-gt v10, v9, :cond_2

    .line 171
    invoke-virtual {v8, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 172
    invoke-interface {v5}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_0

    .line 178
    :cond_2
    invoke-interface {v5}, Lorg/apache/mina/util/byteaccess/ByteArray;->getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    .line 180
    .local v2, "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v7

    .line 182
    .local v7, "originalLimit":I
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 184
    invoke-virtual {v2, v9}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 186
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 188
    .local v3, "bb1":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v2, v9}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 190
    invoke-virtual {v2, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 192
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v4

    .line 194
    .local v4, "bb2":Lorg/apache/mina/core/buffer/IoBuffer;
    new-instance v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$1;

    invoke-direct {v0, p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$1;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 202
    .local v0, "ba1":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-virtual {v8, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 203
    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v10

    sub-int/2addr v9, v10

    .line 206
    move-object v6, v5

    .line 207
    .local v6, "componentFinal":Lorg/apache/mina/util/byteaccess/ByteArray;
    new-instance v1, Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;

    invoke-direct {v1, p0, v4, v6}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$2;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 214
    .local v1, "ba2":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_0

    .line 219
    .end local v0    # "ba1":Lorg/apache/mina/util/byteaccess/ByteArray;
    .end local v1    # "ba2":Lorg/apache/mina/util/byteaccess/ByteArray;
    .end local v2    # "bb":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v3    # "bb1":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v4    # "bb2":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v5    # "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    .end local v6    # "componentFinal":Lorg/apache/mina/util/byteaccess/ByteArray;
    .end local v7    # "originalLimit":I
    :cond_3
    return-object v8
.end method

.method public slice(II)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    return-object v0
.end method
