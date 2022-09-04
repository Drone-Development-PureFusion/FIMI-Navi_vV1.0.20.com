.class public final Lorg/tensorflow/Shape;
.super Ljava/lang/Object;
.source "Shape.java"


# instance fields
.field private shape:[J


# direct methods
.method constructor <init>([J)V
    .locals 0
    .param p1, "shape"    # [J

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/tensorflow/Shape;->shape:[J

    .line 110
    return-void
.end method

.method private hasUnknownDimension()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    iget-object v4, p0, Lorg/tensorflow/Shape;->shape:[J

    if-nez v4, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v2

    .line 125
    :cond_1
    iget-object v5, p0, Lorg/tensorflow/Shape;->shape:[J

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_2

    aget-wide v0, v5, v4

    .line 126
    .local v0, "dimension":J
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-eqz v7, :cond_0

    .line 125
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "dimension":J
    :cond_2
    move v2, v3

    .line 131
    goto :goto_0
.end method

.method public static varargs make(J[J)Lorg/tensorflow/Shape;
    .locals 4
    .param p0, "firstDimensionSize"    # J
    .param p2, "otherDimensionSizes"    # [J

    .prologue
    const/4 v3, 0x0

    .line 55
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [J

    .line 56
    .local v0, "shape":[J
    aput-wide p0, v0, v3

    .line 57
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    new-instance v1, Lorg/tensorflow/Shape;

    invoke-direct {v1, v0}, Lorg/tensorflow/Shape;-><init>([J)V

    return-object v1
.end method

.method public static scalar()Lorg/tensorflow/Shape;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lorg/tensorflow/Shape;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-direct {v0, v1}, Lorg/tensorflow/Shape;-><init>([J)V

    return-object v0
.end method

.method public static unknown()Lorg/tensorflow/Shape;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lorg/tensorflow/Shape;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/tensorflow/Shape;-><init>([J)V

    return-object v0
.end method


# virtual methods
.method asArray()[J
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/tensorflow/Shape;->shape:[J

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 87
    if-ne p0, p1, :cond_0

    .line 95
    :goto_0
    return v1

    .line 91
    :cond_0
    instance-of v0, p1, Lorg/tensorflow/Shape;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/tensorflow/Shape;->shape:[J

    move-object v0, p1

    check-cast v0, Lorg/tensorflow/Shape;

    iget-object v0, v0, Lorg/tensorflow/Shape;->shape:[J

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-direct {p0}, Lorg/tensorflow/Shape;->hasUnknownDimension()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 95
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/tensorflow/Shape;->shape:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method public numDimensions()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/tensorflow/Shape;->shape:[J

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/tensorflow/Shape;->shape:[J

    array-length v0, v0

    goto :goto_0
.end method

.method public size(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lorg/tensorflow/Shape;->shape:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lorg/tensorflow/Shape;->shape:[J

    if-nez v0, :cond_0

    .line 102
    const-string v0, "<unknown>"

    .line 104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/tensorflow/Shape;->shape:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    const-string v2, "?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
