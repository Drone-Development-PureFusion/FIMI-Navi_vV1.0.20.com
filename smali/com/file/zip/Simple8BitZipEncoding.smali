.class Lcom/file/zip/Simple8BitZipEncoding;
.super Ljava/lang/Object;
.source "Simple8BitZipEncoding.java"

# interfaces
.implements Lcom/file/zip/ZipEncoding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;
    }
.end annotation


# instance fields
.field private final highChars:[C

.field private final reverseMapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([C)V
    .locals 5
    .param p1, "highChars"    # [C

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    iput-object v3, p0, Lcom/file/zip/Simple8BitZipEncoding;->highChars:[C

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/file/zip/Simple8BitZipEncoding;->highChars:[C

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;>;"
    const/16 v0, 0x7f

    .line 110
    .local v0, "code":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/file/zip/Simple8BitZipEncoding;->highChars:[C

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 114
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 115
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/file/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    .line 116
    return-void

    .line 111
    :cond_0
    new-instance v3, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;

    add-int/lit8 v4, v0, 0x1

    int-to-byte v0, v4

    iget-object v4, p0, Lcom/file/zip/Simple8BitZipEncoding;->highChars:[C

    aget-char v4, v4, v1

    invoke-direct {v3, v0, v4}, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;-><init>(BC)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private encodeHighChar(C)Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;
    .locals 7
    .param p1, "c"    # C

    .prologue
    const/4 v5, 0x0

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "i0":I
    iget-object v6, p0, Lcom/file/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 184
    .local v2, "i1":I
    :goto_0
    if-gt v2, v1, :cond_1

    .line 201
    iget-object v6, p0, Lcom/file/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_3

    move-object v3, v5

    .line 211
    :cond_0
    :goto_1
    return-object v3

    .line 186
    :cond_1
    sub-int v6, v2, v1

    div-int/lit8 v6, v6, 0x2

    add-int v0, v1, v6

    .line 188
    .local v0, "i":I
    iget-object v6, p0, Lcom/file/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 190
    .local v3, "m":Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;
    iget-char v6, v3, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-eq v6, p1, :cond_0

    .line 194
    iget-char v6, v3, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ge v6, p1, :cond_2

    .line 195
    add-int/lit8 v1, v0, 0x1

    .line 196
    goto :goto_0

    .line 197
    :cond_2
    move v2, v0

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    .end local v3    # "m":Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;
    :cond_3
    iget-object v6, p0, Lcom/file/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 207
    .local v4, "r":Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;
    iget-char v6, v4, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-eq v6, p1, :cond_4

    move-object v3, v5

    .line 208
    goto :goto_1

    :cond_4
    move-object v3, v4

    .line 211
    goto :goto_1
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 229
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 222
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 224
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lcom/file/zip/Simple8BitZipEncoding;->canEncodeChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    const/4 v2, 0x0

    goto :goto_1

    .line 220
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public canEncodeChar(C)Z
    .locals 3
    .param p1, "c"    # C

    .prologue
    const/4 v1, 0x1

    .line 140
    if-ltz p1, :cond_1

    const/16 v2, 0x80

    if-ge p1, v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    invoke-direct {p0, p1}, Lcom/file/zip/Simple8BitZipEncoding;->encodeHighChar(C)Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;

    move-result-object v0

    .line 145
    .local v0, "r":Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public decode([B)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    array-length v2, p1

    new-array v1, v2, [C

    .line 266
    .local v1, "ret":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 270
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 267
    :cond_0
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/file/zip/Simple8BitZipEncoding;->decodeByte(B)C

    move-result v2

    aput-char v2, v1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public decodeByte(B)C
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 126
    if-ltz p1, :cond_0

    .line 127
    int-to-char v0, p1

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/file/zip/Simple8BitZipEncoding;->highChars:[C

    add-int/lit16 v1, p1, 0x80

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    .line 237
    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 240
    .local v2, "out":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 254
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 255
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 256
    return-object v2

    .line 242
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 244
    .local v0, "c":C
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 245
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-static {v2, v3}, Lcom/file/zip/ZipEncodingHelper;->growBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 248
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/file/zip/Simple8BitZipEncoding;->pushEncodedChar(Ljava/nio/ByteBuffer;C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 250
    invoke-static {v2, v0}, Lcom/file/zip/ZipEncodingHelper;->appendSurrogate(Ljava/nio/ByteBuffer;C)V

    .line 240
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public pushEncodedChar(Ljava/nio/ByteBuffer;C)Z
    .locals 3
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "c"    # C

    .prologue
    const/4 v1, 0x1

    .line 159
    if-ltz p2, :cond_0

    const/16 v2, 0x80

    if-ge p2, v2, :cond_0

    .line 160
    int-to-byte v2, p2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 169
    :goto_0
    return v1

    .line 164
    :cond_0
    invoke-direct {p0, p2}, Lcom/file/zip/Simple8BitZipEncoding;->encodeHighChar(C)Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;

    move-result-object v0

    .line 165
    .local v0, "r":Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;
    if-nez v0, :cond_1

    .line 166
    const/4 v1, 0x0

    goto :goto_0

    .line 168
    :cond_1
    iget-byte v2, v0, Lcom/file/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
