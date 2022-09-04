.class public Lcom/file/zip/Zip64ExtendedInformationExtraField;
.super Ljava/lang/Object;
.source "Zip64ExtendedInformationExtraField.java"

# interfaces
.implements Lcom/file/zip/CentralDirectoryParsingZipExtraField;


# static fields
.field private static final EMPTY:[B

.field static final HEADER_ID:Lcom/file/zip/ZipShort;

.field private static final LFH_MUST_HAVE_BOTH_SIZES_MSG:Ljava/lang/String; = "Zip64 extended information must contain both size values in the local file header."


# instance fields
.field private compressedSize:Lcom/file/zip/ZipEightByteInteger;

.field private diskStart:Lcom/file/zip/ZipLong;

.field private rawCentralDirectoryData:[B

.field private relativeHeaderOffset:Lcom/file/zip/ZipEightByteInteger;

.field private size:Lcom/file/zip/ZipEightByteInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/file/zip/ZipShort;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/file/zip/ZipShort;-><init>(I)V

    sput-object v0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lcom/file/zip/ZipShort;

    .line 83
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->EMPTY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/file/zip/ZipEightByteInteger;Lcom/file/zip/ZipEightByteInteger;)V
    .locals 1
    .param p1, "size"    # Lcom/file/zip/ZipEightByteInteger;
    .param p2, "compressedSize"    # Lcom/file/zip/ZipEightByteInteger;

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/file/zip/Zip64ExtendedInformationExtraField;-><init>(Lcom/file/zip/ZipEightByteInteger;Lcom/file/zip/ZipEightByteInteger;Lcom/file/zip/ZipEightByteInteger;Lcom/file/zip/ZipLong;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/file/zip/ZipEightByteInteger;Lcom/file/zip/ZipEightByteInteger;Lcom/file/zip/ZipEightByteInteger;Lcom/file/zip/ZipLong;)V
    .locals 0
    .param p1, "size"    # Lcom/file/zip/ZipEightByteInteger;
    .param p2, "compressedSize"    # Lcom/file/zip/ZipEightByteInteger;
    .param p3, "relativeHeaderOffset"    # Lcom/file/zip/ZipEightByteInteger;
    .param p4, "diskStart"    # Lcom/file/zip/ZipLong;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    .line 130
    iput-object p2, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lcom/file/zip/ZipEightByteInteger;

    .line 131
    iput-object p3, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lcom/file/zip/ZipEightByteInteger;

    .line 132
    iput-object p4, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->diskStart:Lcom/file/zip/ZipLong;

    .line 133
    return-void
.end method

.method private addSizes([B)I
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "off":I
    iget-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lcom/file/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    add-int/lit8 v0, v0, 0x8

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lcom/file/zip/ZipEightByteInteger;

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lcom/file/zip/ZipEightByteInteger;

    invoke-virtual {v1}, Lcom/file/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    add-int/lit8 v0, v0, 0x8

    .line 353
    :cond_1
    return v0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->getCentralDirectoryLength()Lcom/file/zip/ZipShort;

    move-result-object v2

    invoke-virtual {v2}, Lcom/file/zip/ZipShort;->getValue()I

    move-result v2

    new-array v0, v2, [B

    .line 169
    .local v0, "data":[B
    invoke-direct {p0, v0}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->addSizes([B)I

    move-result v1

    .line 170
    .local v1, "off":I
    iget-object v2, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lcom/file/zip/ZipEightByteInteger;

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lcom/file/zip/ZipEightByteInteger;

    invoke-virtual {v2}, Lcom/file/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    add-int/lit8 v1, v1, 0x8

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->diskStart:Lcom/file/zip/ZipLong;

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->diskStart:Lcom/file/zip/ZipLong;

    invoke-virtual {v2}, Lcom/file/zip/ZipLong;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    add-int/lit8 v1, v1, 0x4

    .line 178
    :cond_1
    return-object v0
.end method

.method public getCentralDirectoryLength()Lcom/file/zip/ZipShort;
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 147
    new-instance v4, Lcom/file/zip/ZipShort;

    iget-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    if-eqz v0, :cond_1

    move v0, v1

    .line 148
    :goto_0
    iget-object v3, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lcom/file/zip/ZipEightByteInteger;

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 149
    iget-object v3, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lcom/file/zip/ZipEightByteInteger;

    if-eqz v3, :cond_3

    :goto_2
    add-int/2addr v0, v1

    .line 150
    iget-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->diskStart:Lcom/file/zip/ZipLong;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    :cond_0
    add-int/2addr v0, v2

    .line 147
    invoke-direct {v4, v0}, Lcom/file/zip/ZipShort;-><init>(I)V

    return-object v4

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    .line 148
    goto :goto_1

    :cond_3
    move v1, v2

    .line 149
    goto :goto_2
.end method

.method public getCompressedSize()Lcom/file/zip/ZipEightByteInteger;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lcom/file/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getDiskStartNumber()Lcom/file/zip/ZipLong;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->diskStart:Lcom/file/zip/ZipLong;

    return-object v0
.end method

.method public getHeaderId()Lcom/file/zip/ZipShort;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lcom/file/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lcom/file/zip/ZipEightByteInteger;

    if-eqz v1, :cond_3

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lcom/file/zip/ZipEightByteInteger;

    if-nez v1, :cond_2

    .line 157
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_2
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 160
    .local v0, "data":[B
    invoke-direct {p0, v0}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->addSizes([B)I

    .line 163
    .end local v0    # "data":[B
    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->EMPTY:[B

    goto :goto_0
.end method

.method public getLocalFileDataLength()Lcom/file/zip/ZipShort;
    .locals 2

    .prologue
    .line 142
    new-instance v1, Lcom/file/zip/ZipShort;

    iget-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    invoke-direct {v1, v0}, Lcom/file/zip/ZipShort;-><init>(I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRelativeHeaderOffset()Lcom/file/zip/ZipEightByteInteger;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lcom/file/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getSize()Lcom/file/zip/ZipEightByteInteger;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 216
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    .line 217
    iget-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    const/16 v0, 0x1c

    if-lt p3, v0, :cond_1

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->parseFromLocalFileData([BII)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const/16 v0, 0x18

    if-ne p3, v0, :cond_2

    .line 228
    new-instance v0, Lcom/file/zip/ZipEightByteInteger;

    invoke-direct {v0, p1, p2}, Lcom/file/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    .line 229
    add-int/lit8 p2, p2, 0x8

    .line 230
    new-instance v0, Lcom/file/zip/ZipEightByteInteger;

    invoke-direct {v0, p1, p2}, Lcom/file/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lcom/file/zip/ZipEightByteInteger;

    .line 231
    add-int/lit8 p2, p2, 0x8

    .line 232
    new-instance v0, Lcom/file/zip/ZipEightByteInteger;

    invoke-direct {v0, p1, p2}, Lcom/file/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lcom/file/zip/ZipEightByteInteger;

    goto :goto_0

    .line 233
    :cond_2
    rem-int/lit8 v0, p3, 0x8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 234
    new-instance v0, Lcom/file/zip/ZipLong;

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x4

    invoke-direct {v0, p1, v1}, Lcom/file/zip/ZipLong;-><init>([BI)V

    iput-object v0, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->diskStart:Lcom/file/zip/ZipLong;

    goto :goto_0
.end method

.method public parseFromLocalFileData([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p3, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const/16 v1, 0x10

    if-ge p3, v1, :cond_2

    .line 192
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_2
    new-instance v1, Lcom/file/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, p2}, Lcom/file/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    .line 195
    add-int/lit8 p2, p2, 0x8

    .line 196
    new-instance v1, Lcom/file/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, p2}, Lcom/file/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lcom/file/zip/ZipEightByteInteger;

    .line 197
    add-int/lit8 p2, p2, 0x8

    .line 198
    add-int/lit8 v0, p3, -0x10

    .line 199
    .local v0, "remaining":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 200
    new-instance v1, Lcom/file/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, p2}, Lcom/file/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lcom/file/zip/ZipEightByteInteger;

    .line 201
    add-int/lit8 p2, p2, 0x8

    .line 202
    add-int/lit8 v0, v0, -0x8

    .line 204
    :cond_3
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 205
    new-instance v1, Lcom/file/zip/ZipLong;

    invoke-direct {v1, p1, p2}, Lcom/file/zip/ZipLong;-><init>([BI)V

    iput-object v1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->diskStart:Lcom/file/zip/ZipLong;

    .line 206
    add-int/lit8 p2, p2, 0x4

    .line 207
    add-int/lit8 v0, v0, -0x4

    goto :goto_0
.end method

.method public reparseCentralDirectoryData(ZZZZ)V
    .locals 6
    .param p1, "hasUncompressedSize"    # Z
    .param p2, "hasCompressedSize"    # Z
    .param p3, "hasRelativeHeaderOffset"    # Z
    .param p4, "hasDiskStart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 252
    iget-object v4, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    if-eqz v4, :cond_8

    .line 253
    if-eqz p1, :cond_1

    move v5, v3

    .line 254
    :goto_0
    if-eqz p2, :cond_2

    move v4, v3

    .line 253
    :goto_1
    add-int/2addr v4, v5

    .line 255
    if-eqz p3, :cond_3

    .line 253
    :goto_2
    add-int/2addr v3, v4

    .line 256
    if-eqz p4, :cond_0

    const/4 v2, 0x4

    .line 253
    :cond_0
    add-int v0, v3, v2

    .line 257
    .local v0, "expectedLength":I
    iget-object v2, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    array-length v2, v2

    if-eq v2, v0, :cond_4

    .line 258
    new-instance v2, Ljava/util/zip/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "central directory zip64 extended information extra field\'s length doesn\'t match central directory data.  Expected length "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 263
    iget-object v4, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "expectedLength":I
    :cond_1
    move v5, v2

    .line 253
    goto :goto_0

    :cond_2
    move v4, v2

    .line 254
    goto :goto_1

    :cond_3
    move v3, v2

    .line 255
    goto :goto_2

    .line 265
    .restart local v0    # "expectedLength":I
    :cond_4
    const/4 v1, 0x0

    .line 266
    .local v1, "offset":I
    if-eqz p1, :cond_5

    .line 267
    new-instance v2, Lcom/file/zip/ZipEightByteInteger;

    iget-object v3, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {v2, v3, v1}, Lcom/file/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v2, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    .line 268
    add-int/lit8 v1, v1, 0x8

    .line 270
    :cond_5
    if-eqz p2, :cond_6

    .line 271
    new-instance v2, Lcom/file/zip/ZipEightByteInteger;

    iget-object v3, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    .line 272
    invoke-direct {v2, v3, v1}, Lcom/file/zip/ZipEightByteInteger;-><init>([BI)V

    .line 271
    iput-object v2, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lcom/file/zip/ZipEightByteInteger;

    .line 273
    add-int/lit8 v1, v1, 0x8

    .line 275
    :cond_6
    if-eqz p3, :cond_7

    .line 277
    new-instance v2, Lcom/file/zip/ZipEightByteInteger;

    iget-object v3, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {v2, v3, v1}, Lcom/file/zip/ZipEightByteInteger;-><init>([BI)V

    .line 276
    iput-object v2, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lcom/file/zip/ZipEightByteInteger;

    .line 278
    add-int/lit8 v1, v1, 0x8

    .line 280
    :cond_7
    if-eqz p4, :cond_8

    .line 281
    new-instance v2, Lcom/file/zip/ZipLong;

    iget-object v3, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {v2, v3, v1}, Lcom/file/zip/ZipLong;-><init>([BI)V

    iput-object v2, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->diskStart:Lcom/file/zip/ZipLong;

    .line 282
    add-int/lit8 v1, v1, 0x4

    .line 285
    .end local v0    # "expectedLength":I
    .end local v1    # "offset":I
    :cond_8
    return-void
.end method

.method public setCompressedSize(Lcom/file/zip/ZipEightByteInteger;)V
    .locals 0
    .param p1, "compressedSize"    # Lcom/file/zip/ZipEightByteInteger;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lcom/file/zip/ZipEightByteInteger;

    .line 313
    return-void
.end method

.method public setDiskStartNumber(Lcom/file/zip/ZipLong;)V
    .locals 0
    .param p1, "ds"    # Lcom/file/zip/ZipLong;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->diskStart:Lcom/file/zip/ZipLong;

    .line 341
    return-void
.end method

.method public setRelativeHeaderOffset(Lcom/file/zip/ZipEightByteInteger;)V
    .locals 0
    .param p1, "rho"    # Lcom/file/zip/ZipEightByteInteger;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lcom/file/zip/ZipEightByteInteger;

    .line 327
    return-void
.end method

.method public setSize(Lcom/file/zip/ZipEightByteInteger;)V
    .locals 0
    .param p1, "size"    # Lcom/file/zip/ZipEightByteInteger;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->size:Lcom/file/zip/ZipEightByteInteger;

    .line 299
    return-void
.end method
