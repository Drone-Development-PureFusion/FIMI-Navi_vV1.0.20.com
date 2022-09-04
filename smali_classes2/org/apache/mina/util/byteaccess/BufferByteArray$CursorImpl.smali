.class Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;
.super Ljava/lang/Object;
.source "BufferByteArray.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/BufferByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorImpl"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 257
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-virtual {p0, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->setIndex(I)V

    .line 259
    return-void
.end method


# virtual methods
.method public get()B
    .locals 3

    .prologue
    .line 313
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->get(I)B

    move-result v0

    .line 314
    .local v0, "b":B
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 315
    return v0
.end method

.method public get(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->getRemaining()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 331
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->get(ILorg/apache/mina/core/buffer/IoBuffer;)V

    .line 332
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 333
    return-void
.end method

.method public getChar()C
    .locals 3

    .prologue
    .line 433
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getChar(I)C

    move-result v0

    .line 434
    .local v0, "c":C
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 435
    return v0
.end method

.method public getDouble()D
    .locals 4

    .prologue
    .line 416
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v3, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v2, v3}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getDouble(I)D

    move-result-wide v0

    .line 417
    .local v0, "d":D
    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 418
    return-wide v0
.end method

.method public getFloat()F
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getFloat(I)F

    move-result v0

    .line 400
    .local v0, "f":F
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 401
    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return v0
.end method

.method public getInt()I
    .locals 3

    .prologue
    .line 365
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getInt(I)I

    move-result v0

    .line 366
    .local v0, "i":I
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 367
    return v0
.end method

.method public getLong()J
    .locals 4

    .prologue
    .line 382
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v3, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v2, v3}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getLong(I)J

    move-result-wide v0

    .line 383
    .local v0, "l":J
    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 384
    return-wide v0
.end method

.method public getRemaining()I
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->last()I

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getShort()S
    .locals 3

    .prologue
    .line 348
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getShort(I)S

    move-result v0

    .line 349
    .local v0, "s":S
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 350
    return v0
.end method

.method public hasRemaining()Z
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->put(IB)V

    .line 323
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 324
    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 339
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    .line 340
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->put(ILorg/apache/mina/core/buffer/IoBuffer;)V

    .line 341
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 342
    return-void
.end method

.method public putChar(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 442
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putChar(IC)V

    .line 443
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 444
    return-void
.end method

.method public putDouble(D)V
    .locals 3
    .param p1, "d"    # D

    .prologue
    .line 425
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putDouble(ID)V

    .line 426
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 427
    return-void
.end method

.method public putFloat(F)V
    .locals 2
    .param p1, "f"    # F

    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putFloat(IF)V

    .line 409
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 410
    return-void
.end method

.method public putInt(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putInt(II)V

    .line 375
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 376
    return-void
.end method

.method public putLong(J)V
    .locals 3
    .param p1, "l"    # J

    .prologue
    .line 391
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putLong(IJ)V

    .line 392
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 393
    return-void
.end method

.method public putShort(S)V
    .locals 2
    .param p1, "s"    # S

    .prologue
    .line 357
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putShort(IS)V

    .line 358
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 359
    return-void
.end method

.method public setIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 286
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->last()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 289
    :cond_1
    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 290
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 293
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->setIndex(I)V

    .line 294
    return-void
.end method

.method public slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 297
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->slice(II)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    .line 298
    .local v0, "slice":Lorg/apache/mina/util/byteaccess/ByteArray;
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 299
    return-object v0
.end method
