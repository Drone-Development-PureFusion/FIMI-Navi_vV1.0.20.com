.class public final Lorg/tensorflow/Tensors;
.super Ljava/lang/Object;
.source "Tensors.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(D)Lorg/tensorflow/Tensor;
    .locals 2
    .param p0, "data"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create(F)Lorg/tensorflow/Tensor;
    .locals 2
    .param p0, "data"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lorg/tensorflow/Tensor;
    .locals 2
    .param p0, "data"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create(J)Lorg/tensorflow/Tensor;
    .locals 2
    .param p0, "data"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/tensorflow/Tensor;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/tensorflow/Tensor;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create(Z)Lorg/tensorflow/Tensor;
    .locals 2
    .param p0, "data"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([B)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([D)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const-class v0, Ljava/lang/Double;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([F)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const-class v0, Ljava/lang/Float;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([I)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([J)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    const-class v0, Ljava/lang/Long;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([Z)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[B)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[D)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[D)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const-class v0, Ljava/lang/Double;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[F)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[F)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const-class v0, Ljava/lang/Float;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[I)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[I)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[J)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[J)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    const-class v0, Ljava/lang/Long;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[Z)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[B)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[B)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[D)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[D)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const-class v0, Ljava/lang/Double;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[F)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[F)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const-class v0, Ljava/lang/Float;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[I)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[I)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[J)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[J)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    const-class v0, Ljava/lang/Long;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[Z)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[Z)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[B)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[B)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[D)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[D)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    const-class v0, Ljava/lang/Double;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[F)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[F)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const-class v0, Ljava/lang/Float;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[I)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[I)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[J)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[J)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    const-class v0, Ljava/lang/Long;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[Z)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[Z)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[B)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[B)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[D)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[D)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    const-class v0, Ljava/lang/Double;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[F)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[F)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    const-class v0, Ljava/lang/Float;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[I)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[I)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[J)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[J)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    const-class v0, Ljava/lang/Long;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[Z)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[Z)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[[B)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[[B)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[[D)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[[D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[[D)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    const-class v0, Ljava/lang/Double;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[[F)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[[F)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const-class v0, Ljava/lang/Float;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[[I)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[[I)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[[J)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[[J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[[J)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    const-class v0, Ljava/lang/Long;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method

.method public static create([[[[[[Z)Lorg/tensorflow/Tensor;
    .locals 1
    .param p0, "data"    # [[[[[[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[[[Z)",
            "Lorg/tensorflow/Tensor",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lorg/tensorflow/Tensor;->create(Ljava/lang/Object;Ljava/lang/Class;)Lorg/tensorflow/Tensor;

    move-result-object v0

    return-object v0
.end method
