.class public final Lorg/tensorflow/OperationBuilder;
.super Ljava/lang/Object;
.source "OperationBuilder.java"


# instance fields
.field private graph:Lorg/tensorflow/Graph;

.field private unsafeNativeHandle:J


# direct methods
.method constructor <init>(Lorg/tensorflow/Graph;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "graph"    # Lorg/tensorflow/Graph;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    .line 42
    invoke-virtual {p1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 44
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->nativeHandle()J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3}, Lorg/tensorflow/OperationBuilder;->allocate(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 48
    return-void

    .line 46
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method private static native addControlInput(JJ)V
.end method

.method private static native addInput(JJI)V
.end method

.method private static native addInputList(J[J[I)V
.end method

.method private static native allocate(JLjava/lang/String;Ljava/lang/String;)J
.end method

.method private static native finish(J)J
.end method

.method private static native setAttrBool(JLjava/lang/String;Z)V
.end method

.method private static native setAttrBoolList(JLjava/lang/String;[Z)V
.end method

.method private static native setAttrFloat(JLjava/lang/String;F)V
.end method

.method private static native setAttrFloatList(JLjava/lang/String;[F)V
.end method

.method private static native setAttrInt(JLjava/lang/String;J)V
.end method

.method private static native setAttrIntList(JLjava/lang/String;[J)V
.end method

.method private static native setAttrShape(JLjava/lang/String;[JI)V
.end method

.method private static native setAttrShapeList(JLjava/lang/String;[J[I)V
.end method

.method private static native setAttrString(JLjava/lang/String;[B)V
.end method

.method private static native setAttrStringList(JLjava/lang/String;[Ljava/lang/Object;)V
.end method

.method private static native setAttrTensor(JLjava/lang/String;J)V
.end method

.method private static native setAttrTensorList(JLjava/lang/String;[J)V
.end method

.method private static native setAttrType(JLjava/lang/String;I)V
.end method

.method private static native setAttrTypeList(JLjava/lang/String;[I)V
.end method

.method private static native setDevice(JLjava/lang/String;)V
.end method


# virtual methods
.method public addControlInput(Lorg/tensorflow/Operation;)Lorg/tensorflow/OperationBuilder;
    .locals 6
    .param p1, "control"    # Lorg/tensorflow/Operation;

    .prologue
    .line 99
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 101
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-virtual {p1}, Lorg/tensorflow/Operation;->getUnsafeNativeHandle()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/tensorflow/OperationBuilder;->addControlInput(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 105
    return-object p0

    .line 103
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public addInput(Lorg/tensorflow/Output;)Lorg/tensorflow/OperationBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/Output",
            "<*>;)",
            "Lorg/tensorflow/OperationBuilder;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "input":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<*>;"
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 78
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-virtual {p1}, Lorg/tensorflow/Output;->op()Lorg/tensorflow/Operation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/tensorflow/Operation;->getUnsafeNativeHandle()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/tensorflow/Output;->index()I

    move-result v1

    invoke-static {v2, v3, v4, v5, v1}, Lorg/tensorflow/OperationBuilder;->addInput(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 82
    return-object p0

    .line 80
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public addInputList([Lorg/tensorflow/Output;)Lorg/tensorflow/OperationBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/tensorflow/Output",
            "<*>;)",
            "Lorg/tensorflow/OperationBuilder;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "inputs":[Lorg/tensorflow/Output;, "[Lorg/tensorflow/Output<*>;"
    iget-object v4, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v4}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v3

    .line 111
    .local v3, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    array-length v4, p1

    new-array v2, v4, [J

    .line 112
    .local v2, "opHandles":[J
    array-length v4, p1

    new-array v1, v4, [I

    .line 113
    .local v1, "indices":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 114
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/tensorflow/Output;->op()Lorg/tensorflow/Operation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/tensorflow/Operation;->getUnsafeNativeHandle()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 115
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lorg/tensorflow/Output;->index()I

    move-result v4

    aput v4, v1, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget-wide v4, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v4, v5, v2, v1}, Lorg/tensorflow/OperationBuilder;->addInputList(J[J[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v3}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 121
    return-object p0

    .line 119
    .end local v0    # "i":I
    .end local v1    # "indices":[I
    .end local v2    # "opHandles":[J
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v4
.end method

.method public build()Lorg/tensorflow/Operation;
    .locals 6

    .prologue
    .line 56
    iget-object v2, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v2}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v1

    .line 58
    .local v1, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    new-instance v0, Lorg/tensorflow/Operation;

    iget-object v2, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    iget-wide v4, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v4, v5}, Lorg/tensorflow/OperationBuilder;->finish(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5}, Lorg/tensorflow/Operation;-><init>(Lorg/tensorflow/Graph;J)V

    .line 59
    .local v0, "op":Lorg/tensorflow/Operation;
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v1}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 60
    return-object v0

    .line 62
    .end local v0    # "op":Lorg/tensorflow/Operation;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v2
.end method

.method public setAttr(Ljava/lang/String;F)Lorg/tensorflow/OperationBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 170
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 172
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v2, v3, p1, p2}, Lorg/tensorflow/OperationBuilder;->setAttrFloat(JLjava/lang/String;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 176
    return-object p0

    .line 174
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public setAttr(Ljava/lang/String;J)Lorg/tensorflow/OperationBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 150
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 152
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v2, v3, p1, p2, p3}, Lorg/tensorflow/OperationBuilder;->setAttrInt(JLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 156
    return-object p0

    .line 154
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public setAttr(Ljava/lang/String;Ljava/lang/String;)Lorg/tensorflow/OperationBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/tensorflow/OperationBuilder;->setAttr(Ljava/lang/String;[B)Lorg/tensorflow/OperationBuilder;

    .line 136
    return-object p0
.end method

.method public setAttr(Ljava/lang/String;Lorg/tensorflow/DataType;)Lorg/tensorflow/OperationBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/tensorflow/DataType;

    .prologue
    .line 210
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 212
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-virtual {p2}, Lorg/tensorflow/DataType;->c()I

    move-result v1

    invoke-static {v2, v3, p1, v1}, Lorg/tensorflow/OperationBuilder;->setAttrType(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 216
    return-object p0

    .line 214
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public setAttr(Ljava/lang/String;Lorg/tensorflow/Shape;)Lorg/tensorflow/OperationBuilder;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/tensorflow/Shape;

    .prologue
    .line 259
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 261
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-virtual {p2}, Lorg/tensorflow/Shape;->asArray()[J

    move-result-object v1

    invoke-virtual {p2}, Lorg/tensorflow/Shape;->numDimensions()I

    move-result v4

    invoke-static {v2, v3, p1, v1, v4}, Lorg/tensorflow/OperationBuilder;->setAttrShape(JLjava/lang/String;[JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 265
    return-object p0

    .line 263
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public setAttr(Ljava/lang/String;Lorg/tensorflow/Tensor;)Lorg/tensorflow/OperationBuilder;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/tensorflow/Tensor",
            "<*>;)",
            "Lorg/tensorflow/OperationBuilder;"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, "value":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 236
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-virtual {p2}, Lorg/tensorflow/Tensor;->getNativeHandle()J

    move-result-wide v4

    invoke-static {v2, v3, p1, v4, v5}, Lorg/tensorflow/OperationBuilder;->setAttrTensor(JLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 240
    return-object p0

    .line 238
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public setAttr(Ljava/lang/String;Z)Lorg/tensorflow/OperationBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 190
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 192
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v2, v3, p1, p2}, Lorg/tensorflow/OperationBuilder;->setAttrBool(JLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 196
    return-object p0

    .line 194
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public setAttr(Ljava/lang/String;[B)Lorg/tensorflow/OperationBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 140
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 142
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v2, v3, p1, p2}, Lorg/tensorflow/OperationBuilder;->setAttrString(JLjava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 146
    return-object p0

    .line 144
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public setAttr(Ljava/lang/String;[F)Lorg/tensorflow/OperationBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 180
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 182
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v2, v3, p1, p2}, Lorg/tensorflow/OperationBuilder;->setAttrFloatList(JLjava/lang/String;[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 186
    return-object p0

    .line 184
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public setAttr(Ljava/lang/String;[J)Lorg/tensorflow/OperationBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 160
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 162
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v2, v3, p1, p2}, Lorg/tensorflow/OperationBuilder;->setAttrIntList(JLjava/lang/String;[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 166
    return-object p0

    .line 164
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public setAttr(Ljava/lang/String;[Ljava/lang/String;)Lorg/tensorflow/OperationBuilder;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 299
    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 300
    .local v3, "utf8":Ljava/nio/charset/Charset;
    array-length v4, p2

    new-array v1, v4, [Ljava/lang/Object;

    .line 301
    .local v1, "objects":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_0

    .line 302
    aget-object v4, p2, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    aput-object v4, v1, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    iget-object v4, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v4}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v2

    .line 306
    .local v2, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v4, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v4, v5, p1, v1}, Lorg/tensorflow/OperationBuilder;->setAttrStringList(JLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-virtual {v2}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 310
    return-object p0

    .line 308
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v4
.end method

.method public setAttr(Ljava/lang/String;[Lorg/tensorflow/DataType;)Lorg/tensorflow/OperationBuilder;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Lorg/tensorflow/DataType;

    .prologue
    .line 220
    array-length v3, p2

    new-array v0, v3, [I

    .line 221
    .local v0, "ctypes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 222
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lorg/tensorflow/DataType;->c()I

    move-result v3

    aput v3, v0, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object v3, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v3}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v2

    .line 226
    .local v2, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v4, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v4, v5, p1, v0}, Lorg/tensorflow/OperationBuilder;->setAttrTypeList(JLjava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {v2}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 230
    return-object p0

    .line 228
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v3
.end method

.method public setAttr(Ljava/lang/String;[Lorg/tensorflow/Shape;)Lorg/tensorflow/OperationBuilder;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Lorg/tensorflow/Shape;

    .prologue
    .line 269
    move-object/from16 v0, p2

    array-length v13, v0

    new-array v6, v13, [I

    .line 270
    .local v6, "numDimensions":[I
    const/4 v12, 0x0

    .line 271
    .local v12, "totalNumDimensions":I
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_0
    move-object/from16 v0, p2

    array-length v13, v0

    if-ge v4, v13, :cond_1

    .line 272
    aget-object v13, p2, v4

    invoke-virtual {v13}, Lorg/tensorflow/Shape;->numDimensions()I

    move-result v5

    .line 273
    .local v5, "n":I
    aput v5, v6, v4

    .line 274
    if-lez v5, :cond_0

    .line 275
    add-int/2addr v12, v5

    .line 271
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    .end local v5    # "n":I
    :cond_1
    new-array v11, v12, [J

    .line 281
    .local v11, "shapes":[J
    const/4 v9, 0x0

    .line 282
    .local v9, "shapeIdx":I
    move-object/from16 v0, p2

    array-length v15, v0

    const/4 v13, 0x0

    move v14, v13

    :goto_1
    if-ge v14, v15, :cond_4

    aget-object v8, p2, v14

    .line 283
    .local v8, "shape":Lorg/tensorflow/Shape;
    invoke-virtual {v8}, Lorg/tensorflow/Shape;->numDimensions()I

    move-result v13

    if-lez v13, :cond_3

    .line 284
    invoke-virtual {v8}, Lorg/tensorflow/Shape;->asArray()[J

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v13, 0x0

    move v10, v9

    .end local v9    # "shapeIdx":I
    .local v10, "shapeIdx":I
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_2

    aget-wide v2, v16, v13

    .line 285
    .local v2, "dim":J
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "shapeIdx":I
    .restart local v9    # "shapeIdx":I
    aput-wide v2, v11, v10

    .line 284
    add-int/lit8 v13, v13, 0x1

    move v10, v9

    .end local v9    # "shapeIdx":I
    .restart local v10    # "shapeIdx":I
    goto :goto_2

    .end local v2    # "dim":J
    :cond_2
    move v9, v10

    .line 282
    .end local v10    # "shapeIdx":I
    .restart local v9    # "shapeIdx":I
    :cond_3
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_1

    .line 289
    .end local v8    # "shape":Lorg/tensorflow/Shape;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v13}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v7

    .line 291
    .local v7, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    move-object/from16 v0, p1

    invoke-static {v14, v15, v0, v11, v6}, Lorg/tensorflow/OperationBuilder;->setAttrShapeList(JLjava/lang/String;[J[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-virtual {v7}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 295
    return-object p0

    .line 293
    :catchall_0
    move-exception v13

    invoke-virtual {v7}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v13
.end method

.method public setAttr(Ljava/lang/String;[Lorg/tensorflow/Tensor;)Lorg/tensorflow/OperationBuilder;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/tensorflow/Tensor",
            "<*>;)",
            "Lorg/tensorflow/OperationBuilder;"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "value":[Lorg/tensorflow/Tensor;, "[Lorg/tensorflow/Tensor<*>;"
    array-length v5, p2

    new-array v0, v5, [J

    .line 245
    .local v0, "handles":[J
    const/4 v1, 0x0

    .line 246
    .local v1, "idx":I
    array-length v6, p2

    const/4 v5, 0x0

    move v2, v1

    .end local v1    # "idx":I
    .local v2, "idx":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, p2, v5

    .line 247
    .local v4, "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    invoke-virtual {v4}, Lorg/tensorflow/Tensor;->getNativeHandle()J

    move-result-wide v8

    aput-wide v8, v0, v2

    .line 246
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_0

    .line 249
    .end local v4    # "t":Lorg/tensorflow/Tensor;, "Lorg/tensorflow/Tensor<*>;"
    :cond_0
    iget-object v5, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v5}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v3

    .line 251
    .local v3, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v6, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v6, v7, p1, v0}, Lorg/tensorflow/OperationBuilder;->setAttrTensorList(JLjava/lang/String;[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-virtual {v3}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 255
    return-object p0

    .line 253
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v5
.end method

.method public setAttr(Ljava/lang/String;[Z)Lorg/tensorflow/OperationBuilder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 200
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 202
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v2, v3, p1, p2}, Lorg/tensorflow/OperationBuilder;->setAttrBoolList(JLjava/lang/String;[Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 206
    return-object p0

    .line 204
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public setDevice(Ljava/lang/String;)Lorg/tensorflow/OperationBuilder;
    .locals 4
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v1, p0, Lorg/tensorflow/OperationBuilder;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 127
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/OperationBuilder;->unsafeNativeHandle:J

    invoke-static {v2, v3, p1}, Lorg/tensorflow/OperationBuilder;->setDevice(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 131
    return-object p0

    .line 129
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method
