.class public final Lorg/tensorflow/Output;
.super Ljava/lang/Object;
.source "Output.java"

# interfaces
.implements Lorg/tensorflow/Operand;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/tensorflow/Operand",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final index:I

.field private final operation:Lorg/tensorflow/Operation;


# direct methods
.method public constructor <init>(Lorg/tensorflow/Operation;I)V
    .locals 0
    .param p1, "op"    # Lorg/tensorflow/Operation;
    .param p2, "idx"    # I

    .prologue
    .line 32
    .local p0, "this":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/tensorflow/Output;->operation:Lorg/tensorflow/Operation;

    .line 34
    iput p2, p0, Lorg/tensorflow/Output;->index:I

    .line 35
    return-void
.end method


# virtual methods
.method public asOutput()Lorg/tensorflow/Output;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/tensorflow/Output",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<TT;>;"
    return-object p0
.end method

.method public dataType()Lorg/tensorflow/DataType;
    .locals 2

    .prologue
    .line 54
    .local p0, "this":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<TT;>;"
    iget-object v0, p0, Lorg/tensorflow/Output;->operation:Lorg/tensorflow/Operation;

    iget v1, p0, Lorg/tensorflow/Output;->index:I

    invoke-virtual {v0, v1}, Lorg/tensorflow/Operation;->dtype(I)Lorg/tensorflow/DataType;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-ne p1, p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    instance-of v3, p1, Lorg/tensorflow/Output;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 73
    check-cast v0, Lorg/tensorflow/Output;

    .line 74
    .local v0, "that":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<*>;"
    iget v3, p0, Lorg/tensorflow/Output;->index:I

    iget v4, v0, Lorg/tensorflow/Output;->index:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/tensorflow/Output;->operation:Lorg/tensorflow/Operation;

    iget-object v4, v0, Lorg/tensorflow/Output;->operation:Lorg/tensorflow/Operation;

    invoke-virtual {v3, v4}, Lorg/tensorflow/Operation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<*>;"
    :cond_3
    move v1, v2

    .line 76
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 64
    .local p0, "this":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/tensorflow/Output;->operation:Lorg/tensorflow/Operation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/tensorflow/Output;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public index()I
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<TT;>;"
    iget v0, p0, Lorg/tensorflow/Output;->index:I

    return v0
.end method

.method public op()Lorg/tensorflow/Operation;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<TT;>;"
    iget-object v0, p0, Lorg/tensorflow/Output;->operation:Lorg/tensorflow/Operation;

    return-object v0
.end method

.method public shape()Lorg/tensorflow/Shape;
    .locals 3

    .prologue
    .line 49
    .local p0, "this":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<TT;>;"
    new-instance v0, Lorg/tensorflow/Shape;

    iget-object v1, p0, Lorg/tensorflow/Output;->operation:Lorg/tensorflow/Operation;

    iget v2, p0, Lorg/tensorflow/Output;->index:I

    invoke-virtual {v1, v2}, Lorg/tensorflow/Operation;->shape(I)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tensorflow/Shape;-><init>([J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    .local p0, "this":Lorg/tensorflow/Output;, "Lorg/tensorflow/Output<TT;>;"
    const-string v0, "<%s \'%s:%d\' shape=%s dtype=%s>"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/tensorflow/Output;->operation:Lorg/tensorflow/Operation;

    .line 83
    invoke-virtual {v3}, Lorg/tensorflow/Operation;->type()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/tensorflow/Output;->operation:Lorg/tensorflow/Operation;

    invoke-virtual {v3}, Lorg/tensorflow/Operation;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/tensorflow/Output;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lorg/tensorflow/Output;->shape()Lorg/tensorflow/Shape;

    move-result-object v3

    invoke-virtual {v3}, Lorg/tensorflow/Shape;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lorg/tensorflow/Output;->dataType()Lorg/tensorflow/DataType;

    move-result-object v3

    aput-object v3, v1, v2

    .line 81
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
