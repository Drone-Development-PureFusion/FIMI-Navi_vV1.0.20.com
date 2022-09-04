.class public final Lorg/tensorflow/Tensor;
.super Ljava/lang/Object;
.source "Tensor.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field private static classDataTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/tensorflow/DataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dtype:Lorg/tensorflow/DataType;

.field private nativeHandle:J

.field private shapeCopy:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 612
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    .line 615
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/tensorflow/DataType;->INT32:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lorg/tensorflow/DataType;->INT32:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/tensorflow/DataType;->INT64:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lorg/tensorflow/DataType;->INT64:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/tensorflow/DataType;->FLOAT:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lorg/tensorflow/DataType;->FLOAT:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/tensorflow/DataType;->DOUBLE:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lorg/tensorflow/DataType;->DOUBLE:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/tensorflow/DataType;->STRING:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lorg/tensorflow/DataType;->STRING:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/tensorflow/DataType;->BOOL:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lorg/tensorflow/DataType;->BOOL:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    invoke-static {}, Lorg/tensorflow/TensorFlow;->init()V

    .line 783
    return-void
.end method

.method private constructor <init>(Lorg/tensorflow/DataType;)V
    .locals 1
    .param p1, "t"    # Lorg/tensorflow/DataType;

    .prologue
    .line 568
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tensorflow/Tensor;->shapeCopy:[J

    .line 569
    iput-object p1, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    .line 570
    return-void
.end method

.method private static native allocate(I[JJ)J
.end method

.method private static allocateForBuffer(Lorg/tensorflow/DataType;[JI)Lorg/tensorflow/Tensor;
    .locals 8
    .param p0, "dataType"    # Lorg/tensorflow/DataType;
    .param p1, "shape"    # [J
    .param p2, "nBuffered"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/tensorflow/DataType;",
            "[JI)",
            "Lorg/tensorflow/Tensor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {p1}, Lorg/tensorflow/Tensor;->numElements([J)I

    move-result v1

    .line 305
    .local v1, "nflattened":I
    const/4 v0, 0x0

    .line 306
    .local v0, "nbytes":I
    sget-object v3, Lorg/tensorflow/DataType;->STRING:Lorg/tensorflow/DataType;

    if-eq p0, v3, :cond_1

    .line 307
    if-eq p2, v1, :cond_0

    .line 308
    invoke-static {p2, p1}, Lorg/tensorflow/Tensor;->incompatibleBuffer(I[J)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 310
    :cond_0
    invoke-static {p0}, Lorg/tensorflow/Tensor;->elemByteSize(Lorg/tensorflow/DataType;)I

    move-result v3

    mul-int v0, v1, v3

    .line 315
    :goto_0
    new-instance v2, Lorg/tensorflow/Tensor;

    invoke-direct {v2, p0}, Lorg/tensorflow/Tensor;-><init>(Lorg/tensorflow/DataType;)V

    .line 316
    .local v2, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v2, Lorg/tensorflow/Tensor;->shapeCopy:[J

    .line 317
    iget-object v3, v2, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-virtual {v3}, Lorg/tensorflow/DataType;->c()I

    move-result v3

    iget-object v4, v2, Lorg/tensorflow/Tensor;->shapeCopy:[J

    int-to-long v6, v0

    invoke-static {v3, v4, v6, v7}, Lorg/tensorflow/Tensor;->allocate(I[JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/tensorflow/Tensor;->nativeHandle:J

    .line 318
    return-object v2

    .line 313
    .end local v2    # "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method private static native allocateNonScalarBytes([J[Ljava/lang/Object;)J
.end method

.method private static native allocateScalarBytes([B)J
.end method

.method private static baseObjType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 631
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 632
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 635
    :cond_0
    return-object v0
.end method

.method private buffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 573
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-wide v0, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->buffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static native buffer(J)Ljava/nio/ByteBuffer;
.end method

.method public static create(Ljava/lang/Class;[JLjava/nio/ByteBuffer;)Lorg/tensorflow/Tensor;
    .locals 2
    .param p1, "shape"    # [J
    .param p2, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[J",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lorg/tensorflow/Tensor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/tensorflow/DataType;->fromClass(Ljava/lang/Class;)Lorg/tensorflow/DataType;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/tensorflow/Tensor;->create(Lorg/tensorflow/DataType;[JLjava/nio/ByteBuffer;)Lorg/tensorflow/Tensor;

    move-result-object v0

    .line 245
    .local v0, "ret":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    return-object v0
.end method

.method public static create(Ljava/lang/Object;)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/tensorflow/Tensor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p0}, Lorg/tensorflow/Tensor;->dataTypeOf(Ljava/lang/Object;)Lorg/tensorflow/DataType;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Lorg/tensorflow/DataType;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/tensorflow/Tensor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lorg/tensorflow/DataType;->fromClass(Ljava/lang/Class;)Lorg/tensorflow/DataType;

    move-result-object v0

    .line 107
    .local v0, "dtype":Lorg/tensorflow/DataType;
    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->objectCompatWithType(Ljava/lang/Object;Lorg/tensorflow/DataType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataType of object does not match T (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 112
    invoke-static {p0}, Lorg/tensorflow/Tensor;->dataTypeOf(Ljava/lang/Object;)Lorg/tensorflow/DataType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Lorg/tensorflow/DataType;)Lorg/tensorflow/Tensor;

    move-result-object v1

    return-object v1
.end method

.method private static create(Ljava/lang/Object;Lorg/tensorflow/DataType;)Lorg/tensorflow/Tensor;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "dtype"    # Lorg/tensorflow/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/tensorflow/DataType;",
            ")",
            "Lorg/tensorflow/Tensor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v1, Lorg/tensorflow/Tensor;

    invoke-direct {v1, p1}, Lorg/tensorflow/Tensor;-><init>(Lorg/tensorflow/DataType;)V

    .line 141
    .local v1, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    invoke-static {p0, p1}, Lorg/tensorflow/Tensor;->numDimensions(Ljava/lang/Object;Lorg/tensorflow/DataType;)I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v1, Lorg/tensorflow/Tensor;->shapeCopy:[J

    .line 142
    const/4 v2, 0x0

    iget-object v3, v1, Lorg/tensorflow/Tensor;->shapeCopy:[J

    invoke-static {p0, v2, v3}, Lorg/tensorflow/Tensor;->fillShape(Ljava/lang/Object;I[J)V

    .line 143
    iget-object v2, v1, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    sget-object v3, Lorg/tensorflow/DataType;->STRING:Lorg/tensorflow/DataType;

    if-eq v2, v3, :cond_0

    .line 144
    iget-object v2, v1, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-static {v2}, Lorg/tensorflow/Tensor;->elemByteSize(Lorg/tensorflow/DataType;)I

    move-result v2

    iget-object v3, v1, Lorg/tensorflow/Tensor;->shapeCopy:[J

    invoke-static {v3}, Lorg/tensorflow/Tensor;->numElements([J)I

    move-result v3

    mul-int v0, v2, v3

    .line 145
    .local v0, "byteSize":I
    iget-object v2, v1, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-virtual {v2}, Lorg/tensorflow/DataType;->c()I

    move-result v2

    iget-object v3, v1, Lorg/tensorflow/Tensor;->shapeCopy:[J

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lorg/tensorflow/Tensor;->allocate(I[JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/tensorflow/Tensor;->nativeHandle:J

    .line 146
    iget-wide v2, v1, Lorg/tensorflow/Tensor;->nativeHandle:J

    invoke-static {v2, v3, p0}, Lorg/tensorflow/Tensor;->setValue(JLjava/lang/Object;)V

    .line 152
    .end local v0    # "byteSize":I
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 147
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v2, v1, Lorg/tensorflow/Tensor;->shapeCopy:[J

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, v1, Lorg/tensorflow/Tensor;->shapeCopy:[J

    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v2, p0}, Lorg/tensorflow/Tensor;->allocateNonScalarBytes([J[Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/tensorflow/Tensor;->nativeHandle:J

    goto :goto_0

    .line 150
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lorg/tensorflow/Tensor;->allocateScalarBytes([B)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/tensorflow/Tensor;->nativeHandle:J

    goto :goto_0
.end method

.method private static create(Lorg/tensorflow/DataType;[JLjava/nio/ByteBuffer;)Lorg/tensorflow/Tensor;
    .locals 8
    .param p0, "dtype"    # Lorg/tensorflow/DataType;
    .param p1, "shape"    # [J
    .param p2, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/DataType;",
            "[J",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lorg/tensorflow/Tensor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "nremaining":I
    sget-object v3, Lorg/tensorflow/DataType;->STRING:Lorg/tensorflow/DataType;

    if-eq p0, v3, :cond_1

    .line 266
    invoke-static {p0}, Lorg/tensorflow/Tensor;->elemByteSize(Lorg/tensorflow/DataType;)I

    move-result v0

    .line 267
    .local v0, "elemBytes":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    rem-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 268
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "ByteBuffer with %d bytes is not compatible with a %s Tensor (%d bytes/element)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 271
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lorg/tensorflow/DataType;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 269
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 273
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    div-int v1, v3, v0

    .line 277
    .end local v0    # "elemBytes":I
    :goto_0
    invoke-static {p0, p1, v1}, Lorg/tensorflow/Tensor;->allocateForBuffer(Lorg/tensorflow/DataType;[JI)Lorg/tensorflow/Tensor;

    move-result-object v2

    .line 278
    .local v2, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    invoke-direct {v2}, Lorg/tensorflow/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 279
    return-object v2

    .line 275
    .end local v2    # "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    goto :goto_0
.end method

.method public static create([JLjava/nio/DoubleBuffer;)Lorg/tensorflow/Tensor;
    .locals 3
    .param p0, "shape"    # [J
    .param p1, "data"    # Ljava/nio/DoubleBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/nio/DoubleBuffer;",
            ")",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    sget-object v1, Lorg/tensorflow/DataType;->DOUBLE:Lorg/tensorflow/DataType;

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v2

    invoke-static {v1, p0, v2}, Lorg/tensorflow/Tensor;->allocateForBuffer(Lorg/tensorflow/DataType;[JI)Lorg/tensorflow/Tensor;

    move-result-object v0

    .line 205
    .local v0, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<Ljava/lang/Double;>;"
    invoke-direct {v0}, Lorg/tensorflow/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    .line 206
    return-object v0
.end method

.method public static create([JLjava/nio/FloatBuffer;)Lorg/tensorflow/Tensor;
    .locals 3
    .param p0, "shape"    # [J
    .param p1, "data"    # Ljava/nio/FloatBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/nio/FloatBuffer;",
            ")",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    sget-object v1, Lorg/tensorflow/DataType;->FLOAT:Lorg/tensorflow/DataType;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    invoke-static {v1, p0, v2}, Lorg/tensorflow/Tensor;->allocateForBuffer(Lorg/tensorflow/DataType;[JI)Lorg/tensorflow/Tensor;

    move-result-object v0

    .line 187
    .local v0, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<Ljava/lang/Float;>;"
    invoke-direct {v0}, Lorg/tensorflow/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 188
    return-object v0
.end method

.method public static create([JLjava/nio/IntBuffer;)Lorg/tensorflow/Tensor;
    .locals 3
    .param p0, "shape"    # [J
    .param p1, "data"    # Ljava/nio/IntBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/nio/IntBuffer;",
            ")",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    sget-object v1, Lorg/tensorflow/DataType;->INT32:Lorg/tensorflow/DataType;

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    invoke-static {v1, p0, v2}, Lorg/tensorflow/Tensor;->allocateForBuffer(Lorg/tensorflow/DataType;[JI)Lorg/tensorflow/Tensor;

    move-result-object v0

    .line 169
    .local v0, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Lorg/tensorflow/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 170
    return-object v0
.end method

.method public static create([JLjava/nio/LongBuffer;)Lorg/tensorflow/Tensor;
    .locals 3
    .param p0, "shape"    # [J
    .param p1, "data"    # Ljava/nio/LongBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/nio/LongBuffer;",
            ")",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    sget-object v1, Lorg/tensorflow/DataType;->INT64:Lorg/tensorflow/DataType;

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    invoke-static {v1, p0, v2}, Lorg/tensorflow/Tensor;->allocateForBuffer(Lorg/tensorflow/DataType;[JI)Lorg/tensorflow/Tensor;

    move-result-object v0

    .line 223
    .local v0, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<Ljava/lang/Long;>;"
    invoke-direct {v0}, Lorg/tensorflow/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    .line 224
    return-object v0
.end method

.method private static dataTypeFromClass(Ljava/lang/Class;)Lorg/tensorflow/DataType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/tensorflow/DataType;"
        }
    .end annotation

    .prologue
    .line 649
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/tensorflow/Tensor;->classDataTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tensorflow/DataType;

    .line 650
    .local v0, "ret":Lorg/tensorflow/DataType;
    if-eqz v0, :cond_0

    .line 651
    return-object v0

    .line 653
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create Tensors of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static dataTypeOf(Ljava/lang/Object;)Lorg/tensorflow/DataType;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 644
    invoke-static {p0}, Lorg/tensorflow/Tensor;->baseObjType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 645
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lorg/tensorflow/Tensor;->dataTypeFromClass(Ljava/lang/Class;)Lorg/tensorflow/DataType;

    move-result-object v1

    return-object v1
.end method

.method private static native delete(J)V
.end method

.method private static native dtype(J)I
.end method

.method private static elemByteSize(Lorg/tensorflow/DataType;)I
    .locals 3
    .param p0, "dataType"    # Lorg/tensorflow/DataType;

    .prologue
    .line 598
    invoke-virtual {p0}, Lorg/tensorflow/DataType;->byteSize()I

    move-result v0

    .line 599
    .local v0, "size":I
    if-gez v0, :cond_0

    .line 600
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "STRING tensors do not have a fixed element size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :cond_0
    return v0
.end method

.method private static fillShape(Ljava/lang/Object;I[J)V
    .locals 8
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "dim"    # I
    .param p2, "shape"    # [J

    .prologue
    .line 689
    if-eqz p2, :cond_0

    array-length v2, p2

    if-ne p1, v2, :cond_1

    .line 705
    :cond_0
    return-void

    .line 692
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 693
    .local v1, "len":I
    if-nez v1, :cond_2

    .line 694
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cannot create Tensors with a 0 dimension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 696
    :cond_2
    aget-wide v2, p2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 697
    int-to-long v2, v1

    aput-wide v2, p2, p1

    .line 702
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 703
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, p2}, Lorg/tensorflow/Tensor;->fillShape(Ljava/lang/Object;I[J)V

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    .end local v0    # "i":I
    :cond_4
    aget-wide v2, p2, p1

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 699
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mismatched lengths (%d and %d) in dimension %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-wide v6, p2, p1

    .line 700
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static fromHandle(J)Lorg/tensorflow/Tensor;
    .locals 2
    .param p0, "handle"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/tensorflow/Tensor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Lorg/tensorflow/Tensor;

    invoke-static {p0, p1}, Lorg/tensorflow/Tensor;->dtype(J)I

    move-result v1

    invoke-static {v1}, Lorg/tensorflow/DataType;->fromC(I)Lorg/tensorflow/DataType;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tensorflow/Tensor;-><init>(Lorg/tensorflow/DataType;)V

    .line 555
    .local v0, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    invoke-static {p0, p1}, Lorg/tensorflow/Tensor;->shape(J)[J

    move-result-object v1

    iput-object v1, v0, Lorg/tensorflow/Tensor;->shapeCopy:[J

    .line 556
    iput-wide p0, v0, Lorg/tensorflow/Tensor;->nativeHandle:J

    .line 557
    return-object v0
.end method

.method private static incompatibleBuffer(I[J)Ljava/lang/IllegalArgumentException;
    .locals 5
    .param p0, "numElements"    # I
    .param p1, "shape"    # [J

    .prologue
    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer with %d elements is not compatible with a Tensor with shape %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 585
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 583
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 582
    return-object v0
.end method

.method private static incompatibleBuffer(Ljava/nio/Buffer;Lorg/tensorflow/DataType;)Ljava/lang/IllegalArgumentException;
    .locals 5
    .param p0, "buf"    # Ljava/nio/Buffer;
    .param p1, "dataType"    # Lorg/tensorflow/DataType;

    .prologue
    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot use %s with Tensor of type %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 577
    return-object v0
.end method

.method private static numArrayDimensions(Ljava/lang/Object;)I
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 674
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 675
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 676
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    :cond_0
    return v1
.end method

.method private static numDimensions(Ljava/lang/Object;Lorg/tensorflow/DataType;)I
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "dtype"    # Lorg/tensorflow/DataType;

    .prologue
    .line 665
    invoke-static {p0}, Lorg/tensorflow/Tensor;->numArrayDimensions(Ljava/lang/Object;)I

    move-result v0

    .line 666
    .local v0, "ret":I
    sget-object v1, Lorg/tensorflow/DataType;->STRING:Lorg/tensorflow/DataType;

    if-ne p1, v1, :cond_0

    if-lez v0, :cond_0

    .line 667
    add-int/lit8 v0, v0, -0x1

    .line 669
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method private static numElements([J)I
    .locals 4
    .param p0, "shape"    # [J

    .prologue
    .line 590
    const/4 v1, 0x1

    .line 591
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 592
    aget-wide v2, p0, v0

    long-to-int v2, v2

    mul-int/2addr v1, v2

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    :cond_0
    return v1
.end method

.method private static objectCompatWithType(Ljava/lang/Object;Lorg/tensorflow/DataType;)Z
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "dtype"    # Lorg/tensorflow/DataType;

    .prologue
    const/4 v3, 0x1

    .line 709
    invoke-static {p0}, Lorg/tensorflow/Tensor;->baseObjType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 710
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lorg/tensorflow/Tensor;->dataTypeFromClass(Ljava/lang/Class;)Lorg/tensorflow/DataType;

    move-result-object v1

    .line 711
    .local v1, "dto":Lorg/tensorflow/DataType;
    invoke-static {p0, v1}, Lorg/tensorflow/Tensor;->numDimensions(Ljava/lang/Object;Lorg/tensorflow/DataType;)I

    move-result v2

    .line 712
    .local v2, "nd":I
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Ljava/lang/String;

    if-eq v0, v4, :cond_0

    if-eqz v2, :cond_0

    .line 713
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot create non-scalar Tensors from arrays of boxed values"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 716
    :cond_0
    invoke-virtual {v1, p1}, Lorg/tensorflow/DataType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 722
    :cond_1
    :goto_0
    return v3

    .line 719
    :cond_2
    sget-object v4, Lorg/tensorflow/DataType;->STRING:Lorg/tensorflow/DataType;

    if-ne v1, v4, :cond_3

    sget-object v4, Lorg/tensorflow/DataType;->UINT8:Lorg/tensorflow/DataType;

    if-eq p1, v4, :cond_1

    .line 722
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static native readNDArray(JLjava/lang/Object;)V
.end method

.method private static native scalarBoolean(J)Z
.end method

.method private static native scalarBytes(J)[B
.end method

.method private static native scalarDouble(J)D
.end method

.method private static native scalarFloat(J)F
.end method

.method private static native scalarInt(J)I
.end method

.method private static native scalarLong(J)J
.end method

.method private static native setValue(JLjava/lang/Object;)V
.end method

.method private static native shape(J)[J
.end method

.method private static throwExceptionIfNotByteOfByteArrays(Ljava/lang/Object;)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 606
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[[B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be converted to a Tensor as it includes an array with null elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    return-void
.end method

.method private throwExceptionIfTypeIsIncompatible(Ljava/lang/Object;)V
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 726
    invoke-virtual {p0}, Lorg/tensorflow/Tensor;->numDimensions()I

    move-result v3

    .line 727
    .local v3, "rank":I
    iget-object v4, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-static {p1, v4}, Lorg/tensorflow/Tensor;->numDimensions(Ljava/lang/Object;Lorg/tensorflow/DataType;)I

    move-result v1

    .line 728
    .local v1, "oRank":I
    if-eq v1, v3, :cond_0

    .line 729
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cannot copy Tensor with %d dimensions into an object with %d"

    new-array v6, v10, [Ljava/lang/Object;

    .line 731
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    .line 730
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 733
    :cond_0
    iget-object v4, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-static {p1, v4}, Lorg/tensorflow/Tensor;->objectCompatWithType(Ljava/lang/Object;Lorg/tensorflow/DataType;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 734
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cannot copy Tensor with DataType %s into an object of type %s"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    .line 737
    invoke-virtual {v7}, Lorg/tensorflow/DataType;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 735
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 739
    :cond_1
    new-array v2, v3, [J

    .line 740
    .local v2, "oShape":[J
    invoke-static {p1, v8, v2}, Lorg/tensorflow/Tensor;->fillShape(Ljava/lang/Object;I[J)V

    .line 741
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 742
    aget-wide v4, v2, v0

    invoke-virtual {p0}, Lorg/tensorflow/Tensor;->shape()[J

    move-result-object v6

    aget-wide v6, v6, v0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 743
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cannot copy Tensor with shape %s into object with shape %s"

    new-array v6, v10, [Ljava/lang/Object;

    .line 746
    invoke-virtual {p0}, Lorg/tensorflow/Tensor;->shape()[J

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 744
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 741
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_3
    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 2

    .prologue
    .line 413
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-wide v0, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->scalarBoolean(J)Z

    move-result v0

    return v0
.end method

.method public bytesValue()[B
    .locals 2

    .prologue
    .line 422
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-wide v0, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->scalarBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    const-wide/16 v2, 0x0

    .line 330
    iget-wide v0, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 331
    iget-wide v0, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->delete(J)V

    .line 332
    iput-wide v2, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    .line 334
    :cond_0
    return-void
.end method

.method public copyTo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)TU;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    .local p1, "dst":Ljava/lang/Object;, "TU;"
    invoke-direct {p0, p1}, Lorg/tensorflow/Tensor;->throwExceptionIfTypeIsIncompatible(Ljava/lang/Object;)V

    .line 451
    iget-wide v0, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/Tensor;->readNDArray(JLjava/lang/Object;)V

    .line 452
    return-object p1
.end method

.method public dataType()Lorg/tensorflow/DataType;
    .locals 1

    .prologue
    .line 338
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-object v0, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 386
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-wide v0, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->scalarDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public expect(Ljava/lang/Class;)Lorg/tensorflow/Tensor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Lorg/tensorflow/Tensor",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-static {p1}, Lorg/tensorflow/DataType;->fromClass(Ljava/lang/Class;)Lorg/tensorflow/DataType;

    move-result-object v0

    .line 293
    .local v0, "dt":Lorg/tensorflow/DataType;
    iget-object v1, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-virtual {v0, v1}, Lorg/tensorflow/DataType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot cast from tensor of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to tensor of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    return-object p0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 377
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-wide v0, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->scalarFloat(J)F

    move-result v0

    return v0
.end method

.method getNativeHandle()J
    .locals 2

    .prologue
    .line 561
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-wide v0, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    return-wide v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 395
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-wide v0, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->scalarInt(J)I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 404
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-wide v0, p0, Lorg/tensorflow/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->scalarLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public numBytes()I
    .locals 1

    .prologue
    .line 353
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    invoke-direct {p0}, Lorg/tensorflow/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public numDimensions()I
    .locals 1

    .prologue
    .line 348
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-object v0, p0, Lorg/tensorflow/Tensor;->shapeCopy:[J

    array-length v0, v0

    return v0
.end method

.method public numElements()I
    .locals 1

    .prologue
    .line 358
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-object v0, p0, Lorg/tensorflow/Tensor;->shapeCopy:[J

    invoke-static {v0}, Lorg/tensorflow/Tensor;->numElements([J)I

    move-result v0

    return v0
.end method

.method public shape()[J
    .locals 1

    .prologue
    .line 368
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-object v0, p0, Lorg/tensorflow/Tensor;->shapeCopy:[J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 544
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    const-string v0, "%s tensor with shape %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-virtual {v3}, Lorg/tensorflow/DataType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/tensorflow/Tensor;->shape()[J

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 537
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    invoke-direct {p0}, Lorg/tensorflow/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 538
    .local v0, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 539
    return-void
.end method

.method public writeTo(Ljava/nio/DoubleBuffer;)V
    .locals 3
    .param p1, "dst"    # Ljava/nio/DoubleBuffer;

    .prologue
    .line 502
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-object v1, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    sget-object v2, Lorg/tensorflow/DataType;->DOUBLE:Lorg/tensorflow/DataType;

    if-eq v1, v2, :cond_0

    .line 503
    iget-object v1, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-static {p1, v1}, Lorg/tensorflow/Tensor;->incompatibleBuffer(Ljava/nio/Buffer;Lorg/tensorflow/DataType;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 505
    :cond_0
    invoke-direct {p0}, Lorg/tensorflow/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 506
    .local v0, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    .line 507
    return-void
.end method

.method public writeTo(Ljava/nio/FloatBuffer;)V
    .locals 3
    .param p1, "dst"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 484
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-object v1, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    sget-object v2, Lorg/tensorflow/DataType;->FLOAT:Lorg/tensorflow/DataType;

    if-eq v1, v2, :cond_0

    .line 485
    iget-object v1, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-static {p1, v1}, Lorg/tensorflow/Tensor;->incompatibleBuffer(Ljava/nio/Buffer;Lorg/tensorflow/DataType;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 487
    :cond_0
    invoke-direct {p0}, Lorg/tensorflow/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 488
    .local v0, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 489
    return-void
.end method

.method public writeTo(Ljava/nio/IntBuffer;)V
    .locals 3
    .param p1, "dst"    # Ljava/nio/IntBuffer;

    .prologue
    .line 466
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-object v1, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    sget-object v2, Lorg/tensorflow/DataType;->INT32:Lorg/tensorflow/DataType;

    if-eq v1, v2, :cond_0

    .line 467
    iget-object v1, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-static {p1, v1}, Lorg/tensorflow/Tensor;->incompatibleBuffer(Ljava/nio/Buffer;Lorg/tensorflow/DataType;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 469
    :cond_0
    invoke-direct {p0}, Lorg/tensorflow/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 470
    .local v0, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 471
    return-void
.end method

.method public writeTo(Ljava/nio/LongBuffer;)V
    .locals 3
    .param p1, "dst"    # Ljava/nio/LongBuffer;

    .prologue
    .line 520
    .local p0, "this":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<TT;>;"
    iget-object v1, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    sget-object v2, Lorg/tensorflow/DataType;->INT64:Lorg/tensorflow/DataType;

    if-eq v1, v2, :cond_0

    .line 521
    iget-object v1, p0, Lorg/tensorflow/Tensor;->dtype:Lorg/tensorflow/DataType;

    invoke-static {p1, v1}, Lorg/tensorflow/Tensor;->incompatibleBuffer(Ljava/nio/Buffer;Lorg/tensorflow/DataType;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 523
    :cond_0
    invoke-direct {p0}, Lorg/tensorflow/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 524
    .local v0, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    .line 525
    return-void
.end method
