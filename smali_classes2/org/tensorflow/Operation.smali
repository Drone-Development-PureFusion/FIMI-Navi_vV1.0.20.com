.class public final Lorg/tensorflow/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# instance fields
.field private final graph:Lorg/tensorflow/Graph;

.field private final unsafeNativeHandle:J


# direct methods
.method constructor <init>(Lorg/tensorflow/Graph;J)V
    .locals 0
    .param p1, "g"    # Lorg/tensorflow/Graph;
    .param p2, "unsafeNativeHandle"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/tensorflow/Operation;->graph:Lorg/tensorflow/Graph;

    .line 37
    iput-wide p2, p0, Lorg/tensorflow/Operation;->unsafeNativeHandle:J

    .line 38
    return-void
.end method

.method private static native dtype(JJI)I
.end method

.method private static native inputListLength(JLjava/lang/String;)I
.end method

.method private static native name(J)Ljava/lang/String;
.end method

.method private static native numOutputs(J)I
.end method

.method private static native outputListLength(JLjava/lang/String;)I
.end method

.method private static native shape(JJI)[J
.end method

.method private static native type(J)Ljava/lang/String;
.end method


# virtual methods
.method dtype(I)Lorg/tensorflow/DataType;
    .locals 6
    .param p1, "output"    # I

    .prologue
    .line 195
    iget-object v1, p0, Lorg/tensorflow/Operation;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 197
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->nativeHandle()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/tensorflow/Operation;->unsafeNativeHandle:J

    invoke-static {v2, v3, v4, v5, p1}, Lorg/tensorflow/Operation;->dtype(JJI)I

    move-result v1

    invoke-static {v1}, Lorg/tensorflow/DataType;->fromC(I)Lorg/tensorflow/DataType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 199
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 197
    return-object v1

    .line 199
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 131
    if-ne p1, p0, :cond_0

    .line 147
    :goto_0
    return v2

    .line 134
    :cond_0
    instance-of v4, p1, Lorg/tensorflow/Operation;

    if-nez v4, :cond_1

    move v2, v3

    .line 135
    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 137
    check-cast v1, Lorg/tensorflow/Operation;

    .line 138
    .local v1, "that":Lorg/tensorflow/Operation;
    iget-object v4, p0, Lorg/tensorflow/Operation;->graph:Lorg/tensorflow/Graph;

    iget-object v5, v1, Lorg/tensorflow/Operation;->graph:Lorg/tensorflow/Graph;

    if-eq v4, v5, :cond_2

    move v2, v3

    .line 139
    goto :goto_0

    .line 145
    :cond_2
    iget-object v4, p0, Lorg/tensorflow/Operation;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v4}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 147
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v4, p0, Lorg/tensorflow/Operation;->unsafeNativeHandle:J

    iget-wide v6, v1, Lorg/tensorflow/Operation;->unsafeNativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 149
    :goto_1
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 147
    goto :goto_1

    .line 149
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v2
.end method

.method getUnsafeNativeHandle()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/tensorflow/Operation;->unsafeNativeHandle:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lorg/tensorflow/Operation;->unsafeNativeHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public inputListLength(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v1, p0, Lorg/tensorflow/Operation;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 173
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/Operation;->unsafeNativeHandle:J

    invoke-static {v2, v3, p1}, Lorg/tensorflow/Operation;->inputListLength(JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 175
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 173
    return v1

    .line 175
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public name()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    iget-object v1, p0, Lorg/tensorflow/Operation;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 44
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/Operation;->unsafeNativeHandle:J

    invoke-static {v2, v3}, Lorg/tensorflow/Operation;->name(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 44
    return-object v1

    .line 46
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public numOutputs()I
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lorg/tensorflow/Operation;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 67
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/Operation;->unsafeNativeHandle:J

    invoke-static {v2, v3}, Lorg/tensorflow/Operation;->numOutputs(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 69
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 67
    return v1

    .line 69
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public output(I)Lorg/tensorflow/Output;
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/tensorflow/Output",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lorg/tensorflow/Output;

    invoke-direct {v0, p0, p1}, Lorg/tensorflow/Output;-><init>(Lorg/tensorflow/Operation;I)V

    return-object v0
.end method

.method public outputList(II)[Lorg/tensorflow/Output;
    .locals 3
    .param p1, "idx"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)[",
            "Lorg/tensorflow/Output",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 102
    new-array v1, p2, [Lorg/tensorflow/Output;

    .line 103
    .local v1, "outputs":[Lorg/tensorflow/Output;, "[Lorg/tensorflow/Output<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 104
    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/tensorflow/Operation;->output(I)Lorg/tensorflow/Output;

    move-result-object v2

    aput-object v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-object v1
.end method

.method public outputListLength(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v1, p0, Lorg/tensorflow/Operation;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 88
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/Operation;->unsafeNativeHandle:J

    invoke-static {v2, v3, p1}, Lorg/tensorflow/Operation;->outputListLength(JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 90
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 88
    return v1

    .line 90
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method shape(I)[J
    .locals 6
    .param p1, "output"    # I

    .prologue
    .line 185
    iget-object v1, p0, Lorg/tensorflow/Operation;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 187
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->nativeHandle()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/tensorflow/Operation;->unsafeNativeHandle:J

    invoke-static {v2, v3, v4, v5, p1}, Lorg/tensorflow/Operation;->shape(JJI)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 189
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 187
    return-object v1

    .line 189
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    const-string v0, "<%s \'%s\'>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/tensorflow/Operation;->type()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/tensorflow/Operation;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    iget-object v1, p0, Lorg/tensorflow/Operation;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v1}, Lorg/tensorflow/Graph;->ref()Lorg/tensorflow/Graph$Reference;

    move-result-object v0

    .line 57
    .local v0, "r":Lorg/tensorflow/Graph$Reference;
    :try_start_0
    iget-wide v2, p0, Lorg/tensorflow/Operation;->unsafeNativeHandle:J

    invoke-static {v2, v3}, Lorg/tensorflow/Operation;->type(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    .line 57
    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/tensorflow/Graph$Reference;->close()V

    throw v1
.end method
