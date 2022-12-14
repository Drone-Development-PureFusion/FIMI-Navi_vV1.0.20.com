.class public Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;
.super Ljava/lang/Object;


# static fields
.field private static final CHUNK_TYPE:I = 0x1c0001

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;

.field private static final UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

.field private static final UTF8_FLAG:I = 0x100


# instance fields
.field private m_isUTF8:Z

.field private m_stringOffsets:[I

.field private m_strings:[B

.field private m_styleOffsets:[I

.field private m_styles:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

    const-class v0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeString(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    if-eqz v1, :cond_0

    sget-object v1, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

    :goto_0
    iget-object v2, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v2, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    sget-object v1, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static final getShort([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static final getShort([II)I
    .locals 2

    div-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    rem-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const v1, 0xffff

    and-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method private getStyle(I)[I
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_styleOffsets:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_styles:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_styleOffsets:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_styleOffsets:[I

    aget v0, v0, p1

    div-int/lit8 v1, v0, 0x4

    move v0, v1

    move v2, v3

    :goto_1
    iget-object v5, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_styles:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_styles:[I

    aget v5, v5, v0

    if-ne v5, v6, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    rem-int/lit8 v0, v2, 0x3

    if-eqz v0, :cond_5

    :cond_3
    move-object v0, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-array v4, v2, [I

    :goto_2
    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_styles:[I

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_styles:[I

    aget v0, v0, v1

    if-ne v0, v6, :cond_7

    :cond_6
    move-object v0, v4

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v3, 0x1

    iget-object v5, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_styles:[I

    add-int/lit8 v2, v1, 0x1

    aget v1, v5, v1

    aput v1, v4, v3

    move v3, v0

    move v1, v2

    goto :goto_2
.end method

.method private static final getVarint([BI)[I
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    aget-byte v3, p0, p1

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    and-int/lit8 v3, v3, 0x7f

    if-nez v0, :cond_1

    new-array v0, v5, [I

    aput v3, v0, v2

    aput v1, v0, v1

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    new-array v0, v5, [I

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v0, v2

    aput v5, v0, v1

    goto :goto_1
.end method

.method private outputStyleTag(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V
    .locals 7

    const/16 v6, 0x3b

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/16 v0, 0x3c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const/16 v3, 0x3d

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v5, :cond_3

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lch/qos/logback/repackage/brut/androlib/res/xml/ResXmlEncoders;->escapeXmlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_1
.end method

.method public static read(Lch/qos/logback/repackage/brut/util/ExtDataInput;)Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x1c0001

    invoke-virtual {p0, v0}, Lch/qos/logback/repackage/brut/util/ExtDataInput;->skipCheckInt(I)V

    invoke-virtual {p0}, Lch/qos/logback/repackage/brut/util/ExtDataInput;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lch/qos/logback/repackage/brut/util/ExtDataInput;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lch/qos/logback/repackage/brut/util/ExtDataInput;->readInt()I

    move-result v4

    invoke-virtual {p0}, Lch/qos/logback/repackage/brut/util/ExtDataInput;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lch/qos/logback/repackage/brut/util/ExtDataInput;->readInt()I

    move-result v5

    invoke-virtual {p0}, Lch/qos/logback/repackage/brut/util/ExtDataInput;->readInt()I

    move-result v2

    new-instance v6, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;

    invoke-direct {v6}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;-><init>()V

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v6, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    invoke-virtual {p0, v3}, Lch/qos/logback/repackage/brut/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v6, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Lch/qos/logback/repackage/brut/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v6, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_styleOffsets:[I

    :cond_0
    if-nez v2, :cond_2

    move v0, v1

    :goto_1
    sub-int/2addr v0, v5

    rem-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_3

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    new-array v0, v0, [B

    iput-object v0, v6, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_strings:[B

    iget-object v0, v6, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-virtual {p0, v0}, Lch/qos/logback/repackage/brut/util/ExtDataInput;->readFully([B)V

    if-eqz v2, :cond_5

    sub-int v0, v1, v2

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Style data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lch/qos/logback/repackage/brut/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v6, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_styles:[I

    :cond_5
    return-object v6
.end method


# virtual methods
.method public find(Ljava/lang/String;)I
    .locals 8

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    array-length v3, v3

    if-eq v0, v3, :cond_5

    iget-object v3, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    aget v4, v3, v0

    iget-object v3, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v3, v4}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->getShort([BI)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v5, v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_2
    if-eq v3, v5, :cond_3

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v7, v4}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->getShort([BI)I

    move-result v7

    if-eq v6, v7, :cond_4

    :cond_3
    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHTML(I)Ljava/lang/String;
    .locals 13

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0, p1}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->getStyle(I)[I

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {v6}, Lch/qos/logback/repackage/brut/androlib/res/xml/ResXmlEncoders;->escapeXmlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v0, v8

    div-int/lit8 v0, v0, 0x3

    new-array v10, v0, [I

    move v0, v1

    move v2, v1

    :goto_1
    move v3, v1

    move v4, v5

    :goto_2
    array-length v7, v8

    if-eq v3, v7, :cond_5

    add-int/lit8 v7, v3, 0x1

    aget v7, v8, v7

    if-ne v7, v5, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    :cond_3
    if-eq v4, v5, :cond_4

    add-int/lit8 v7, v4, 0x1

    aget v7, v8, v7

    add-int/lit8 v11, v3, 0x1

    aget v11, v8, v11

    if-le v7, v11, :cond_2

    :cond_4
    move v4, v3

    goto :goto_3

    :cond_5
    if-eq v4, v5, :cond_7

    add-int/lit8 v3, v4, 0x1

    aget v3, v8, v3

    :goto_4
    add-int/lit8 v7, v0, -0x1

    move v0, v2

    :goto_5
    if-ltz v7, :cond_6

    aget v2, v10, v7

    add-int/lit8 v11, v2, 0x2

    aget v11, v8, v11

    if-lt v11, v3, :cond_8

    :cond_6
    add-int/lit8 v7, v7, 0x1

    if-ge v0, v3, :cond_b

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/repackage/brut/androlib/res/xml/ResXmlEncoders;->escapeXmlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_6
    if-ne v4, v5, :cond_a

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_4

    :cond_8
    if-gt v0, v11, :cond_9

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v6, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/repackage/brut/androlib/res/xml/ResXmlEncoders;->escapeXmlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v11, 0x1

    :cond_9
    aget v2, v8, v2

    invoke-virtual {p0, v2}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    invoke-direct {p0, v2, v9, v11}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->outputStyleTag(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    add-int/lit8 v2, v7, -0x1

    move v7, v2

    goto :goto_5

    :cond_a
    aget v0, v8, v4

    invoke-virtual {p0, v0}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v9, v1}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->outputStyleTag(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    add-int/lit8 v0, v4, 0x1

    aput v5, v8, v0

    add-int/lit8 v0, v7, 0x1

    aput v4, v10, v7

    goto :goto_1

    :cond_b
    move v2, v0

    goto :goto_6
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    aget v1, v0, p1

    iget-boolean v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v0, v1}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->getShort([BI)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    :goto_1
    invoke-direct {p0, v1, v0}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->decodeString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v0, v1}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->getVarint([BI)[I

    move-result-object v0

    aget v0, v0, v3

    add-int/2addr v0, v1

    iget-object v1, p0, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v1, v0}, Lch/qos/logback/repackage/brut/androlib/res/decoder/StringBlock;->getVarint([BI)[I

    move-result-object v2

    aget v1, v2, v3

    add-int/2addr v1, v0

    const/4 v0, 0x0

    aget v0, v2, v0

    goto :goto_1
.end method
