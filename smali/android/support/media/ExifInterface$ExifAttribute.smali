.class Landroid/support/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method private constructor <init>(II[B)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    .line 561
    iput p2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 562
    iput-object p3, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 563
    return-void
.end method

.method synthetic constructor <init>(II[BLandroid/support/media/ExifInterface$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # [B
    .param p4, "x3"    # Landroid/support/media/ExifInterface$1;

    .prologue
    .line 554
    invoke-direct {p0, p1, p2, p3}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/support/media/ExifInterface$ExifAttribute;
    .param p1, "x1"    # Ljava/nio/ByteOrder;

    .prologue
    .line 554
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createByte(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 609
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-gt v2, v3, :cond_0

    .line 610
    new-array v1, v5, [B

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 611
    .local v1, "bytes":[B
    new-instance v2, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v3, v1

    invoke-direct {v2, v5, v3, v1}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 614
    .end local v1    # "bytes":[B
    :goto_0
    return-object v2

    .line 613
    :cond_0
    invoke-static {}, Landroid/support/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 614
    .local v0, "ascii":[B
    new-instance v2, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v5, v3, v0}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    goto :goto_0
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 663
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/support/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v6, 0xc

    .line 653
    sget-object v1, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v1, v1, v6

    array-length v4, p0

    mul-int/2addr v1, v4

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 655
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 656
    array-length v4, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, p0, v1

    .line 657
    .local v2, "value":D
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .end local v2    # "value":D
    :cond_0
    new-instance v1, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v4, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 604
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v5, 0x9

    .line 594
    sget-object v2, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v2, v2, v5

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 596
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 597
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 598
    .local v1, "value":I
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 600
    .end local v1    # "value":I
    :cond_0
    new-instance v2, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSRational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/support/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 649
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createSRational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroid/support/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v6, 0xa

    .line 638
    sget-object v2, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v2, v2, v6

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 640
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 641
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 642
    .local v1, "value":Landroid/support/media/ExifInterface$Rational;
    iget-wide v4, v1, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 643
    iget-wide v4, v1, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 641
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 645
    .end local v1    # "value":Landroid/support/media/ExifInterface$Rational;
    :cond_0
    new-instance v2, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createString(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/support/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 619
    .local v0, "ascii":[B
    new-instance v1, Landroid/support/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x2

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 590
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v6, 0x4

    .line 580
    sget-object v1, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v1, v1, v6

    array-length v4, p0

    mul-int/2addr v1, v4

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 582
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 583
    array-length v4, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, p0, v1

    .line 584
    .local v2, "value":J
    long-to-int v5, v2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    .end local v2    # "value":J
    :cond_0
    new-instance v1, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v4, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createURational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/support/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 634
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createURational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroid/support/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v6, 0x5

    .line 623
    sget-object v2, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v2, v2, v6

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 625
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 626
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 627
    .local v1, "value":Landroid/support/media/ExifInterface$Rational;
    iget-wide v4, v1, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 628
    iget-wide v4, v1, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    .end local v1    # "value":Landroid/support/media/ExifInterface$Rational;
    :cond_0
    new-instance v2, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 576
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v5, 0x3

    .line 566
    sget-object v2, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v2, v2, v5

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 568
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 569
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 570
    .local v1, "value":I
    int-to-short v4, v1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 569
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    .end local v1    # "value":I
    :cond_0
    new-instance v2, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 20
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 672
    const/4 v12, 0x0

    .line 674
    .local v12, "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :try_start_0
    new-instance v13, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v13, v3}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .local v13, "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 676
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    packed-switch v3, :pswitch_data_0

    .line 777
    const/16 v16, 0x0

    .line 783
    if-eqz v13, :cond_0

    .line 785
    :try_start_2
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    :cond_0
    :goto_0
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :cond_1
    :goto_1
    return-object v16

    .line 680
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    if-ltz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    const/4 v8, 0x1

    if-gt v3, v8, :cond_3

    .line 681
    new-instance v16, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [C

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v17, v17, v18

    add-int/lit8 v17, v17, 0x30

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    aput-char v17, v3, v8

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 783
    if-eqz v13, :cond_2

    .line 785
    :try_start_4
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_2
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_1

    .line 786
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_0
    move-exception v9

    .line 787
    .local v9, "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 683
    .end local v9    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_5
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-static {}, Landroid/support/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 783
    if-eqz v13, :cond_4

    .line 785
    :try_start_6
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_3
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_1

    .line 786
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_1
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 687
    .end local v9    # "e":Ljava/io/IOException;
    :pswitch_1
    const/4 v11, 0x0

    .line 688
    .local v11, "index":I
    :try_start_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object v8

    array-length v8, v8

    if-lt v3, v8, :cond_6

    .line 689
    const/4 v14, 0x1

    .line 690
    .local v14, "same":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object v3

    array-length v3, v3

    if-ge v10, v3, :cond_5

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v3, v3, v10

    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object v8

    aget-byte v8, v8, v10

    if-eq v3, v8, :cond_9

    .line 692
    const/4 v14, 0x0

    .line 696
    :cond_5
    if-eqz v14, :cond_6

    .line 697
    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object v3

    array-length v11, v3

    .line 701
    .end local v10    # "i":I
    .end local v14    # "same":Z
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .local v15, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v11, v3, :cond_7

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v2, v3, v11

    .line 704
    .local v2, "ch":I
    if-nez v2, :cond_a

    .line 714
    .end local v2    # "ch":I
    :cond_7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v16

    .line 783
    if-eqz v13, :cond_8

    .line 785
    :try_start_8
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_8
    :goto_6
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_1

    .line 690
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v15    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v14    # "same":Z
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 707
    .end local v10    # "i":I
    .end local v14    # "same":Z
    .restart local v2    # "ch":I
    .restart local v15    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_a
    const/16 v3, 0x20

    if-lt v2, v3, :cond_b

    .line 708
    int-to-char v3, v2

    :try_start_9
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    :goto_7
    add-int/lit8 v11, v11, 0x1

    .line 713
    goto :goto_5

    .line 710
    :cond_b
    const/16 v3, 0x3f

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    .line 779
    .end local v2    # "ch":I
    .end local v11    # "index":I
    .end local v15    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v9

    move-object v12, v13

    .line 780
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :goto_8
    :try_start_a
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred during reading a value"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 781
    const/16 v16, 0x0

    .line 783
    if-eqz v12, :cond_1

    .line 785
    :try_start_b
    invoke-virtual {v12}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_1

    .line 786
    :catch_3
    move-exception v9

    .line 787
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 786
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v11    # "index":I
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v15    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_4
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 717
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "index":I
    .end local v15    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_2
    :try_start_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 718
    .local v16, "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_c

    .line 719
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v16, v10
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 718
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 783
    :cond_c
    if-eqz v13, :cond_d

    .line 785
    :try_start_d
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_d
    :goto_a
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_1

    .line 786
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_5
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 724
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_3
    :try_start_e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [J

    move-object/from16 v16, v0

    .line 725
    .local v16, "values":[J
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_e

    .line 726
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v18

    aput-wide v18, v16, v10
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 725
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 783
    :cond_e
    if-eqz v13, :cond_f

    .line 785
    :try_start_f
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    :cond_f
    :goto_c
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_1

    .line 786
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_6
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 731
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "i":I
    .end local v16    # "values":[J
    :pswitch_4
    :try_start_10
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [Landroid/support/media/ExifInterface$Rational;

    move-object/from16 v16, v0

    .line 732
    .local v16, "values":[Landroid/support/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_d
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_10

    .line 733
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 734
    .local v4, "numerator":J
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 735
    .local v6, "denominator":J
    new-instance v3, Landroid/support/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/support/media/ExifInterface$Rational;-><init>(JJLandroid/support/media/ExifInterface$1;)V

    aput-object v3, v16, v10
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 732
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 783
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    :cond_10
    if-eqz v13, :cond_11

    .line 785
    :try_start_11
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :cond_11
    :goto_e
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_1

    .line 786
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_7
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 740
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "i":I
    .end local v16    # "values":[Landroid/support/media/ExifInterface$Rational;
    :pswitch_5
    :try_start_12
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 741
    .local v16, "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_12

    .line 742
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    aput v3, v16, v10
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 741
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 783
    :cond_12
    if-eqz v13, :cond_13

    .line 785
    :try_start_13
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    :cond_13
    :goto_10
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_1

    .line 786
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_8
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 747
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_6
    :try_start_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 748
    .restart local v16    # "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_14

    .line 749
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    aput v3, v16, v10
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 748
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 783
    :cond_14
    if-eqz v13, :cond_15

    .line 785
    :try_start_15
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    :cond_15
    :goto_12
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_1

    .line 786
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_9
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 754
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_7
    :try_start_16
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [Landroid/support/media/ExifInterface$Rational;

    move-object/from16 v16, v0

    .line 755
    .local v16, "values":[Landroid/support/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_16

    .line 756
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    int-to-long v4, v3

    .line 757
    .restart local v4    # "numerator":J
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    int-to-long v6, v3

    .line 758
    .restart local v6    # "denominator":J
    new-instance v3, Landroid/support/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/support/media/ExifInterface$Rational;-><init>(JJLandroid/support/media/ExifInterface$1;)V

    aput-object v3, v16, v10
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 755
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 783
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    :cond_16
    if-eqz v13, :cond_17

    .line 785
    :try_start_17
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    :cond_17
    :goto_14
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_1

    .line 786
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_a
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 763
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "i":I
    .end local v16    # "values":[Landroid/support/media/ExifInterface$Rational;
    :pswitch_8
    :try_start_18
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [D

    move-object/from16 v16, v0

    .line 764
    .local v16, "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_15
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_18

    .line 765
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v18, v0

    aput-wide v18, v16, v10
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 764
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 783
    :cond_18
    if-eqz v13, :cond_19

    .line 785
    :try_start_19
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b

    :cond_19
    :goto_16
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_1

    .line 786
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_b
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 770
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "i":I
    .end local v16    # "values":[D
    :pswitch_9
    :try_start_1a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [D

    move-object/from16 v16, v0

    .line 771
    .restart local v16    # "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_17
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_1a

    .line 772
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v18

    aput-wide v18, v16, v10
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 771
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 783
    :cond_1a
    if-eqz v13, :cond_1b

    .line 785
    :try_start_1b
    invoke-virtual {v13}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c

    :cond_1b
    :goto_18
    move-object v12, v13

    .line 788
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto/16 :goto_1

    .line 786
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catch_c
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 786
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "i":I
    .end local v16    # "values":[D
    :catch_d
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred while closing InputStream"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 783
    .end local v9    # "e":Ljava/io/IOException;
    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catchall_0
    move-exception v3

    :goto_19
    if-eqz v12, :cond_1c

    .line 785
    :try_start_1c
    invoke-virtual {v12}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_e

    .line 788
    :cond_1c
    :goto_1a
    throw v3

    .line 786
    :catch_e
    move-exception v9

    .line 787
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v8, "ExifInterface"

    const-string v17, "IOException occurred while closing InputStream"

    move-object/from16 v0, v17

    invoke-static {v8, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 783
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    :catchall_1
    move-exception v3

    move-object v12, v13

    .end local v13    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v12    # "inputStream":Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_19

    .line 779
    :catch_f
    move-exception v9

    goto/16 :goto_8

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 5
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 794
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    .line 795
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 796
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "NULL can\'t be converted to a double value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 798
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 799
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 825
    :goto_0
    return-wide v2

    .line 801
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, [J

    if-eqz v2, :cond_3

    .line 802
    check-cast v1, [J

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [J

    .line 803
    .local v0, "array":[J
    array-length v2, v0

    if-ne v2, v4, :cond_2

    .line 804
    aget-wide v2, v0, v3

    long-to-double v2, v2

    goto :goto_0

    .line 806
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 808
    .end local v0    # "array":[J
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v2, v1, [I

    if-eqz v2, :cond_5

    .line 809
    check-cast v1, [I

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [I

    .line 810
    .local v0, "array":[I
    array-length v2, v0

    if-ne v2, v4, :cond_4

    .line 811
    aget v2, v0, v3

    int-to-double v2, v2

    goto :goto_0

    .line 813
    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 815
    .end local v0    # "array":[I
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v2, v1, [D

    if-eqz v2, :cond_7

    .line 816
    check-cast v1, [D

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [D

    .line 817
    .local v0, "array":[D
    array-length v2, v0

    if-ne v2, v4, :cond_6

    .line 818
    aget-wide v2, v0, v3

    goto :goto_0

    .line 820
    :cond_6
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 822
    .end local v0    # "array":[D
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v2, v1, [Landroid/support/media/ExifInterface$Rational;

    if-eqz v2, :cond_9

    .line 823
    check-cast v1, [Landroid/support/media/ExifInterface$Rational;

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Landroid/support/media/ExifInterface$Rational;

    .line 824
    .local v0, "array":[Landroid/support/media/ExifInterface$Rational;
    array-length v2, v0

    if-ne v2, v4, :cond_8

    .line 825
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/support/media/ExifInterface$Rational;->calculate()D

    move-result-wide v2

    goto :goto_0

    .line 827
    :cond_8
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 829
    .end local v0    # "array":[Landroid/support/media/ExifInterface$Rational;
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_9
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Couldn\'t find a double value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 5
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 833
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    .line 834
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 835
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "NULL can\'t be converted to a integer value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 837
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 838
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 850
    :goto_0
    return v2

    .line 840
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, [J

    if-eqz v2, :cond_3

    .line 841
    check-cast v1, [J

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [J

    .line 842
    .local v0, "array":[J
    array-length v2, v0

    if-ne v2, v4, :cond_2

    .line 843
    aget-wide v2, v0, v3

    long-to-int v2, v2

    goto :goto_0

    .line 845
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 847
    .end local v0    # "array":[J
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v2, v1, [I

    if-eqz v2, :cond_5

    .line 848
    check-cast v1, [I

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [I

    .line 849
    .local v0, "array":[I
    array-length v2, v0

    if-ne v2, v4, :cond_4

    .line 850
    aget v2, v0, v3

    goto :goto_0

    .line 852
    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 854
    .end local v0    # "array":[I
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Couldn\'t find a integer value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 6
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x0

    .line 858
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    .line 859
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_0

    move-object v3, v4

    .line 909
    .end local v3    # "value":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 862
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 863
    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 866
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v5, v3, [J

    if-eqz v5, :cond_4

    .line 868
    check-cast v3, [J

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [J

    .line 869
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 870
    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 871
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_2

    .line 872
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 875
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 877
    .end local v0    # "array":[J
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v5, v3, [I

    if-eqz v5, :cond_7

    .line 878
    check-cast v3, [I

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [I

    .line 879
    .local v0, "array":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_6

    .line 880
    aget v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 881
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_5

    .line 882
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 885
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 887
    .end local v0    # "array":[I
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v5, v3, [D

    if-eqz v5, :cond_a

    .line 888
    check-cast v3, [D

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [D

    .line 889
    .local v0, "array":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_9

    .line 890
    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 891
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_8

    .line 892
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 895
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 897
    .end local v0    # "array":[D
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v5, v3, [Landroid/support/media/ExifInterface$Rational;

    if-eqz v5, :cond_d

    .line 898
    check-cast v3, [Landroid/support/media/ExifInterface$Rational;

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [Landroid/support/media/ExifInterface$Rational;

    .line 899
    .local v0, "array":[Landroid/support/media/ExifInterface$Rational;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v4, v0

    if-ge v1, v4, :cond_c

    .line 900
    aget-object v4, v0, v1

    iget-wide v4, v4, Landroid/support/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 901
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 902
    aget-object v4, v0, v1

    iget-wide v4, v4, Landroid/support/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 903
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_b

    .line 904
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 907
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .end local v0    # "array":[Landroid/support/media/ExifInterface$Rational;
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_d
    move-object v3, v4

    .line 909
    goto/16 :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 913
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
