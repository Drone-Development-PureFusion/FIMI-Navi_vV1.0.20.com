.class public Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;
.super Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;
.source "CompositeByteArrayRelativeReader.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/IoRelativeReader;


# instance fields
.field private final autoFree:Z


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Z)V
    .locals 0
    .param p1, "cba"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    .param p2, "autoFree"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V

    .line 53
    iput-boolean p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->autoFree:Z

    .line 54
    return-void
.end method


# virtual methods
.method protected cursorPassedFirstComponent()V
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->autoFree:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeFirst()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->free()V

    .line 61
    :cond_0
    return-void
.end method

.method public get()B
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v0

    return v0
.end method

.method public get(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 91
    return-void
.end method

.method public getChar()C
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getChar()C

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getFloat()F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getShort()S

    move-result v0

    return v0
.end method

.method public bridge synthetic order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public skip(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->skip(I)V

    .line 68
    return-void
.end method

.method public slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    return-object v0
.end method
