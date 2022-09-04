.class Lorg/apache/mina/core/buffer/IoBufferHexDumper;
.super Ljava/lang/Object;
.source "IoBufferHexDumper.java"


# static fields
.field private static final highDigits:[B

.field private static final lowDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    .line 43
    const/16 v4, 0x10

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 46
    .local v0, "digits":[B
    new-array v1, v5, [B

    .line 47
    .local v1, "high":[B
    new-array v3, v5, [B

    .line 49
    .local v3, "low":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 50
    ushr-int/lit8 v4, v2, 0x4

    aget-byte v4, v0, v4

    aput-byte v4, v1, v2

    .line 51
    and-int/lit8 v4, v2, 0xf

    aget-byte v4, v0, v4

    aput-byte v4, v3, v2

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    sput-object v1, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->highDigits:[B

    .line 55
    sput-object v3, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->lowDigits:[B

    .line 56
    return-void

    .line 43
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHexdump(Lorg/apache/mina/core/buffer/IoBuffer;I)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p1, "lengthLimit"    # I

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lengthLimit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected: 1+)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    if-le v5, p1, :cond_1

    const/4 v4, 0x1

    .line 72
    .local v4, "truncate":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 73
    move v3, p1

    .line 78
    .local v3, "size":I
    :goto_1
    if-nez v3, :cond_3

    .line 79
    const-string v5, "empty"

    .line 106
    :goto_2
    return-object v5

    .line 70
    .end local v3    # "size":I
    .end local v4    # "truncate":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 75
    .restart local v4    # "truncate":Z
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    .restart local v3    # "size":I
    goto :goto_1

    .line 82
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x3

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 84
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    .line 87
    .local v1, "mark":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 88
    .local v0, "byteValue":I
    sget-object v5, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->highDigits:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    sget-object v5, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->lowDigits:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v3, v3, -0x1

    .line 93
    :goto_3
    if-lez v3, :cond_4

    .line 94
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 96
    sget-object v5, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->highDigits:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    sget-object v5, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->lowDigits:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 100
    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 102
    if-eqz v4, :cond_5

    .line 103
    const-string v5, "..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
