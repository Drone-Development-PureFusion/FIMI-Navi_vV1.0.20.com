.class final Lorg/tensorflow/lite/Tensor;
.super Ljava/lang/Object;
.source "Tensor.java"


# instance fields
.field private final dtype:Lorg/tensorflow/lite/DataType;

.field private final nativeHandle:J

.field private final shapeCopy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 234
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->init()Z

    .line 235
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeHandle"    # J

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-wide p1, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    .line 211
    invoke-static {p1, p2}, Lorg/tensorflow/lite/Tensor;->dtype(J)I

    move-result v0

    invoke-static {v0}, Lorg/tensorflow/lite/DataType;->fromNumber(I)Lorg/tensorflow/lite/DataType;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    .line 212
    invoke-static {p1, p2}, Lorg/tensorflow/lite/Tensor;->shape(J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    .line 213
    return-void
.end method

.method private buffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->buffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static native buffer(J)Ljava/nio/ByteBuffer;
.end method

.method static dataTypeOf(Ljava/lang/Object;)Lorg/tensorflow/lite/DataType;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 115
    if-eqz p0, :cond_4

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    sget-object v1, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    .line 127
    :goto_1
    return-object v1

    .line 122
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    sget-object v1, Lorg/tensorflow/lite/DataType;->INT32:Lorg/tensorflow/lite/DataType;

    goto :goto_1

    .line 124
    :cond_2
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    sget-object v1, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    goto :goto_1

    .line 126
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    sget-object v1, Lorg/tensorflow/lite/DataType;->INT64:Lorg/tensorflow/lite/DataType;

    goto :goto_1

    .line 130
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataType error: cannot resolve DataType of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native dtype(J)I
.end method

.method static fillShape(Ljava/lang/Object;I[I)V
    .locals 7
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "dim"    # I
    .param p2, "shape"    # [I

    .prologue
    .line 155
    if-eqz p2, :cond_0

    array-length v2, p2

    if-ne p1, v2, :cond_1

    .line 168
    :cond_0
    return-void

    .line 158
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 159
    .local v1, "len":I
    aget v2, p2, p1

    if-nez v2, :cond_3

    .line 160
    aput v1, p2, p1

    .line 165
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 166
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, p2}, Lorg/tensorflow/lite/Tensor;->fillShape(Ljava/lang/Object;I[I)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "i":I
    :cond_3
    aget v2, p2, p1

    if-eq v2, v1, :cond_2

    .line 162
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mismatched lengths (%d and %d) in dimension %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget v6, p2, p1

    .line 163
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method static fromHandle(J)Lorg/tensorflow/lite/Tensor;
    .locals 2
    .param p0, "nativeHandle"    # J

    .prologue
    .line 32
    new-instance v0, Lorg/tensorflow/lite/Tensor;

    invoke-direct {v0, p0, p1}, Lorg/tensorflow/lite/Tensor;-><init>(J)V

    return-object v0
.end method

.method private static isByteBuffer(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 202
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    return v0
.end method

.method private static native numBytes(J)I
.end method

.method static numDimensions(Ljava/lang/Object;)I
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 144
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_2

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array lengths cannot be 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/tensorflow/lite/Tensor;->numDimensions(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static native readMultiDimensionalArray(JLjava/lang/Object;)V
.end method

.method private static native shape(J)[I
.end method

.method static shapeOf(Ljava/lang/Object;)[I
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 136
    invoke-static {p0}, Lorg/tensorflow/lite/Tensor;->numDimensions(Ljava/lang/Object;)I

    move-result v1

    .line 137
    .local v1, "size":I
    new-array v0, v1, [I

    .line 138
    .local v0, "dimensions":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lorg/tensorflow/lite/Tensor;->fillShape(Ljava/lang/Object;I[I)V

    .line 139
    return-object v0
.end method

.method private throwExceptionIfTypeIsIncompatible(Ljava/lang/Object;)V
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 171
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isByteBuffer(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 172
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 173
    .local v0, "oBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->numBytes()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 174
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot convert between a TensorFlowLite buffer with %d bytes and a ByteBuffer with %d bytes."

    new-array v5, v9, [Ljava/lang/Object;

    .line 178
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->numBytes()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 175
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    .end local v0    # "oBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->dataTypeOf(Ljava/lang/Object;)Lorg/tensorflow/lite/DataType;

    move-result-object v2

    .line 183
    .local v2, "oType":Lorg/tensorflow/lite/DataType;
    iget-object v3, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    if-eq v2, v3, :cond_1

    .line 184
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot convert between a TensorFlowLite tensor with type %s and a Java object of type %s (which is compatible with the TensorFlowLite type %s)."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    aput-object v6, v5, v7

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    .line 185
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_1
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->shapeOf(Ljava/lang/Object;)[I

    move-result-object v1

    .line 192
    .local v1, "oShape":[I
    iget-object v3, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 193
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot copy between a TensorFlowLite tensor with shape %s and a Java object with shape %s."

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    .line 197
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 194
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    .end local v1    # "oShape":[I
    .end local v2    # "oType":Lorg/tensorflow/lite/DataType;
    :cond_2
    return-void
.end method

.method private static native writeDirectBuffer(JLjava/nio/ByteBuffer;)V
.end method

.method private static native writeMultiDimensionalArray(JLjava/lang/Object;)V
.end method


# virtual methods
.method copyTo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "dst"    # Ljava/lang/Object;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwExceptionIfTypeIsIncompatible(Ljava/lang/Object;)V

    .line 89
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 90
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 91
    .local v0, "dstByteBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 95
    .end local v0    # "dstByteBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object p1

    .line 94
    :cond_0
    iget-wide v2, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v2, v3, p1}, Lorg/tensorflow/lite/Tensor;->readMultiDimensionalArray(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public dataType()Lorg/tensorflow/lite/DataType;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    return-object v0
.end method

.method getInputShapeIfDifferent(Ljava/lang/Object;)[I
    .locals 3
    .param p1, "input"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isByteBuffer(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->shapeOf(Ljava/lang/Object;)[I

    move-result-object v0

    .line 107
    .local v0, "inputShape":[I
    iget-object v2, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 108
    goto :goto_0
.end method

.method public numBytes()I
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->numBytes(J)I

    move-result v0

    return v0
.end method

.method setTo(Ljava/lang/Object;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwExceptionIfTypeIsIncompatible(Ljava/lang/Object;)V

    .line 66
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isByteBuffer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 67
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 70
    .local v0, "srcBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 71
    iget-wide v2, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v2, v3, v0}, Lorg/tensorflow/lite/Tensor;->writeDirectBuffer(JLjava/nio/ByteBuffer;)V

    .line 78
    .end local v0    # "srcBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-void

    .line 73
    .restart local v0    # "srcBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-direct {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 77
    .end local v0    # "srcBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    iget-wide v2, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v2, v3, p1}, Lorg/tensorflow/lite/Tensor;->writeMultiDimensionalArray(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public shape()[I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    return-object v0
.end method
