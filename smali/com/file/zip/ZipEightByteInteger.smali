.class public final Lcom/file/zip/ZipEightByteInteger;
.super Ljava/lang/Object;
.source "ZipEightByteInteger.java"


# static fields
.field private static final BYTE_1:I = 0x1

.field private static final BYTE_1_MASK:I = 0xff00

.field private static final BYTE_1_SHIFT:I = 0x8

.field private static final BYTE_2:I = 0x2

.field private static final BYTE_2_MASK:I = 0xff0000

.field private static final BYTE_2_SHIFT:I = 0x10

.field private static final BYTE_3:I = 0x3

.field private static final BYTE_3_MASK:J = 0xff000000L

.field private static final BYTE_3_SHIFT:I = 0x18

.field private static final BYTE_4:I = 0x4

.field private static final BYTE_4_MASK:J = 0xff00000000L

.field private static final BYTE_4_SHIFT:I = 0x20

.field private static final BYTE_5:I = 0x5

.field private static final BYTE_5_MASK:J = 0xff0000000000L

.field private static final BYTE_5_SHIFT:I = 0x28

.field private static final BYTE_6:I = 0x6

.field private static final BYTE_6_MASK:J = 0xff000000000000L

.field private static final BYTE_6_SHIFT:I = 0x30

.field private static final BYTE_7:I = 0x7

.field private static final BYTE_7_MASK:J = 0x7f00000000000000L

.field private static final BYTE_7_SHIFT:I = 0x38

.field private static final LEFTMOST_BIT:B = -0x80t

.field private static final LEFTMOST_BIT_SHIFT:I = 0x3f

.field public static final ZERO:Lcom/file/zip/ZipEightByteInteger;


# instance fields
.field private final value:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/file/zip/ZipEightByteInteger;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/file/zip/ZipEightByteInteger;-><init>(J)V

    sput-object v0, Lcom/file/zip/ZipEightByteInteger;->ZERO:Lcom/file/zip/ZipEightByteInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 72
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/file/zip/ZipEightByteInteger;-><init>(Ljava/math/BigInteger;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/file/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    .line 81
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/file/zip/ZipEightByteInteger;-><init>([BI)V

    .line 89
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1, p2}, Lcom/file/zip/ZipEightByteInteger;->getValue([BI)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/file/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    .line 98
    return-void
.end method

.method public static getBytes(J)[B
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 130
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/file/zip/ZipEightByteInteger;->getBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes(Ljava/math/BigInteger;)[B
    .locals 8
    .param p0, "value"    # Ljava/math/BigInteger;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x7

    .line 139
    new-array v0, v6, [B

    .line 140
    .local v0, "result":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 141
    .local v2, "val":J
    const/4 v1, 0x0

    const-wide/16 v4, 0xff

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 142
    const/4 v1, 0x1

    const-wide/32 v4, 0xff00

    and-long/2addr v4, v2

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 143
    const/4 v1, 0x2

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 144
    const/4 v1, 0x3

    const-wide v4, 0xff000000L

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 145
    const/4 v1, 0x4

    const-wide v4, 0xff00000000L

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 146
    const/4 v1, 0x5

    const-wide v4, 0xff0000000000L

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 147
    const/4 v1, 0x6

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 148
    const-wide/high16 v4, 0x7f00000000000000L    # 5.4861240687936887E303

    and-long/2addr v4, v2

    const/16 v1, 0x38

    shr-long/2addr v4, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 149
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    aget-byte v1, v0, v7

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 152
    :cond_0
    return-object v0
.end method

.method public static getLongValue([B)J
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/file/zip/ZipEightByteInteger;->getLongValue([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongValue([BI)J
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 163
    invoke-static {p0, p1}, Lcom/file/zip/ZipEightByteInteger;->getValue([BI)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getValue([B)Ljava/math/BigInteger;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/file/zip/ZipEightByteInteger;->getValue([BI)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static getValue([BI)Ljava/math/BigInteger;
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 174
    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    const-wide/high16 v6, 0x7f00000000000000L    # 5.4861240687936887E303

    and-long v2, v4, v6

    .line 175
    .local v2, "value":J
    add-int/lit8 v1, p1, 0x6

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 176
    add-int/lit8 v1, p1, 0x5

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    const-wide v6, 0xff0000000000L

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 177
    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    const-wide v6, 0xff00000000L

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 178
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 179
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 180
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const/16 v1, 0x8

    shl-long/2addr v4, v1

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 181
    aget-byte v1, p0, p1

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 182
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 183
    .local v0, "val":Ljava/math/BigInteger;
    add-int/lit8 v1, p1, 0x7

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, -0x80

    const/16 v4, -0x80

    if-ne v1, v4, :cond_0

    .line 184
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 183
    .end local v0    # "val":Ljava/math/BigInteger;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/file/zip/ZipEightByteInteger;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    const/4 v0, 0x0

    .line 215
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/file/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    check-cast p1, Lcom/file/zip/ZipEightByteInteger;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/file/zip/ZipEightByteInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/file/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/file/zip/ZipEightByteInteger;->getBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/file/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/file/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/file/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZipEightByteInteger value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/file/zip/ZipEightByteInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
