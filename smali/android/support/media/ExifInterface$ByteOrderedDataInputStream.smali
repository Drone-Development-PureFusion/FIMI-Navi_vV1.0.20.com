.class Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
.super Ljava/io/InputStream;
.source "ExifInterface.java"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteOrderedDataInputStream"
.end annotation


# static fields
.field private static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field private static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field private mDataInputStream:Ljava/io/DataInputStream;

.field private final mLength:I

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3644
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 3645
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3652
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3648
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 3653
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    .line 3654
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    iput v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    .line 3655
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3656
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    iget v1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->mark(I)V

    .line 3657
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3660
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3661
    return-void
.end method

.method static synthetic access$700(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    .prologue
    .line 3643
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    return v0
.end method

.method static synthetic access$800(Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    .prologue
    .line 3643
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    return v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3687
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public peek()I
    .locals 1

    .prologue
    .line 3682
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3692
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3693
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3698
    iget-object v1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 3699
    .local v0, "bytesRead":I
    iget v1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3700
    return v0
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3717
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3718
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3757
    iget v1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3758
    iget v1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-le v1, v2, :cond_0

    .line 3759
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 3761
    :cond_0
    iget-object v1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 3762
    .local v0, "ch":I
    if-gez v0, :cond_1

    .line 3763
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 3765
    :cond_1
    int-to-byte v1, v0

    return v1
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3723
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3724
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3878
    invoke-virtual {p0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3873
    invoke-virtual {p0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3746
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3747
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-le v0, v1, :cond_0

    .line 3748
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 3750
    :cond_0
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 3751
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t read up to the length of buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3753
    :cond_1
    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3735
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3736
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-le v0, v1, :cond_0

    .line 3737
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 3739
    :cond_0
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 3740
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t read up to the length of buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3742
    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3789
    iget v4, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3790
    iget v4, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v5, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-le v4, v5, :cond_0

    .line 3791
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 3793
    :cond_0
    iget-object v4, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 3794
    .local v0, "ch1":I
    iget-object v4, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 3795
    .local v1, "ch2":I
    iget-object v4, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 3796
    .local v2, "ch3":I
    iget-object v4, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 3797
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_1

    .line 3798
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 3800
    :cond_1
    iget-object v4, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_2

    .line 3801
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    .line 3803
    :goto_0
    return v4

    .line 3802
    :cond_2
    iget-object v4, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_3

    .line 3803
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    goto :goto_0

    .line 3805
    :cond_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid byte order: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3711
    const-string v0, "ExifInterface"

    const-string v1, "Currently unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    const/4 v0, 0x0

    return-object v0
.end method

.method public readLong()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3844
    iget v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v8, v8, 0x8

    iput v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3845
    iget v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v9, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-le v8, v9, :cond_0

    .line 3846
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 3848
    :cond_0
    iget-object v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 3849
    .local v0, "ch1":I
    iget-object v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 3850
    .local v1, "ch2":I
    iget-object v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 3851
    .local v2, "ch3":I
    iget-object v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 3852
    .local v3, "ch4":I
    iget-object v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 3853
    .local v4, "ch5":I
    iget-object v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 3854
    .local v5, "ch6":I
    iget-object v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 3855
    .local v6, "ch7":I
    iget-object v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v7

    .line 3856
    .local v7, "ch8":I
    or-int v8, v0, v1

    or-int/2addr v8, v2

    or-int/2addr v8, v3

    or-int/2addr v8, v4

    or-int/2addr v8, v5

    or-int/2addr v8, v6

    or-int/2addr v8, v7

    if-gez v8, :cond_1

    .line 3857
    new-instance v8, Ljava/io/EOFException;

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v8

    .line 3859
    :cond_1
    iget-object v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v9, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_2

    .line 3860
    int-to-long v8, v7

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v4

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v3

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v2

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v1

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v0

    add-long/2addr v8, v10

    .line 3864
    :goto_0
    return-wide v8

    .line 3863
    :cond_2
    iget-object v8, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v9, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_3

    .line 3864
    int-to-long v8, v0

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    int-to-long v10, v1

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v2

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v3

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v4

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    goto :goto_0

    .line 3868
    :cond_3
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid byte order: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public readShort()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3770
    iget v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3771
    iget v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v3, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-le v2, v3, :cond_0

    .line 3772
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 3774
    :cond_0
    iget-object v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 3775
    .local v0, "ch1":I
    iget-object v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 3776
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_1

    .line 3777
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 3779
    :cond_1
    iget-object v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2

    .line 3780
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    int-to-short v2, v2

    .line 3782
    :goto_0
    return v2

    .line 3781
    :cond_2
    iget-object v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_3

    .line 3782
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    int-to-short v2, v2

    goto :goto_0

    .line 3784
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid byte order: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3729
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3730
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3705
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3706
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3839
    invoke-virtual {p0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3821
    iget v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3822
    iget v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    iget v3, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-le v2, v3, :cond_0

    .line 3823
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 3825
    :cond_0
    iget-object v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 3826
    .local v0, "ch1":I
    iget-object v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 3827
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-gez v2, :cond_1

    .line 3828
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 3830
    :cond_1
    iget-object v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2

    .line 3831
    shl-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    .line 3833
    :goto_0
    return v2

    .line 3832
    :cond_2
    iget-object v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_3

    .line 3833
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    goto :goto_0

    .line 3835
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid byte order: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public seek(J)V
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3668
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 3669
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3670
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->reset()V

    .line 3671
    iget-object v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    iget v1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->mark(I)V

    .line 3676
    :goto_0
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    long-to-int v1, p1

    if-eq v0, v1, :cond_1

    .line 3677
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t seek up to the byteCount"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3673
    :cond_0
    iget v0, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    goto :goto_0

    .line 3679
    :cond_1
    return-void
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 3664
    iput-object p1, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    .line 3665
    return-void
.end method

.method public skipBytes(I)I
    .locals 4
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3810
    iget v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    iget v3, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3811
    .local v1, "totalSkip":I
    const/4 v0, 0x0

    .line 3812
    .local v0, "skipped":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3813
    iget-object v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 3815
    :cond_0
    iget v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    .line 3816
    return v0
.end method
