.class public abstract Lcom/file/zip/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final DOS_TIME_MIN:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x2100

    invoke-static {v0, v1}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/file/zip/ZipUtil;->DOS_TIME_MIN:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustToLong(I)J
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 79
    if-gez p0, :cond_0

    .line 80
    const-wide v0, 0x100000000L

    int-to-long v2, p0

    add-long/2addr v0, v2

    .line 82
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p0

    goto :goto_0
.end method

.method static canHandleEntryData(Lcom/file/zip/ZipEntry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/file/zip/ZipEntry;

    .prologue
    .line 190
    invoke-static {p0}, Lcom/file/zip/ZipUtil;->supportsEncryptionOf(Lcom/file/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/file/zip/ZipUtil;->supportsMethodOf(Lcom/file/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static checkRequestedFeatures(Lcom/file/zip/ZipEntry;)V
    .locals 2
    .param p0, "ze"    # Lcom/file/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/file/zip/UnsupportedZipFeatureException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {p0}, Lcom/file/zip/ZipUtil;->supportsEncryptionOf(Lcom/file/zip/ZipEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/file/zip/UnsupportedZipFeatureException;

    .line 223
    sget-object v1, Lcom/file/zip/UnsupportedZipFeatureException$Feature;->ENCRYPTION:Lcom/file/zip/UnsupportedZipFeatureException$Feature;

    .line 222
    invoke-direct {v0, v1, p0}, Lcom/file/zip/UnsupportedZipFeatureException;-><init>(Lcom/file/zip/UnsupportedZipFeatureException$Feature;Lcom/file/zip/ZipEntry;)V

    .line 221
    throw v0

    .line 225
    :cond_0
    invoke-static {p0}, Lcom/file/zip/ZipUtil;->supportsMethodOf(Lcom/file/zip/ZipEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Lcom/file/zip/UnsupportedZipFeatureException;

    .line 228
    sget-object v1, Lcom/file/zip/UnsupportedZipFeatureException$Feature;->METHOD:Lcom/file/zip/UnsupportedZipFeatureException$Feature;

    .line 227
    invoke-direct {v0, v1, p0}, Lcom/file/zip/UnsupportedZipFeatureException;-><init>(Lcom/file/zip/UnsupportedZipFeatureException$Feature;Lcom/file/zip/ZipEntry;)V

    .line 226
    throw v0

    .line 230
    :cond_1
    return-void
.end method

.method static copy([B)[B
    .locals 3
    .param p0, "from"    # [B

    .prologue
    const/4 v2, 0x0

    .line 178
    if-eqz p0, :cond_0

    .line 179
    array-length v1, p0

    new-array v0, v1, [B

    .line 180
    .local v0, "to":[B
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    .end local v0    # "to":[B
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dosToJavaTime(J)J
    .locals 10
    .param p0, "dosTime"    # J

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 104
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0x19

    shr-long v2, p0, v1

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v1, v1, 0x7bc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/4 v1, 0x2

    const/16 v2, 0x15

    shr-long v2, p0, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 107
    shr-long v2, p0, v8

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 108
    const/16 v1, 0xc

    shr-long v2, p0, v7

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 109
    const/16 v1, 0xd

    shl-long v2, p0, v6

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 111
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public static fromDosTime(Lcom/file/zip/ZipLong;)Ljava/util/Date;
    .locals 6
    .param p0, "zipDosTime"    # Lcom/file/zip/ZipLong;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/file/zip/ZipLong;->getValue()J

    move-result-wide v0

    .line 94
    .local v0, "dosTime":J
    new-instance v2, Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/file/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private static getUnicodeStringIfOriginalMatches(Lcom/file/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;
    .locals 8
    .param p0, "f"    # Lcom/file/zip/AbstractUnicodeExtraField;
    .param p1, "orig"    # [B

    .prologue
    const/4 v4, 0x0

    .line 152
    if-eqz p0, :cond_0

    .line 153
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 154
    .local v0, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 155
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 157
    .local v2, "origCRC32":J
    invoke-virtual {p0}, Lcom/file/zip/AbstractUnicodeExtraField;->getNameCRC32()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 160
    :try_start_0
    sget-object v5, Lcom/file/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lcom/file/zip/ZipEncoding;

    invoke-virtual {p0}, Lcom/file/zip/AbstractUnicodeExtraField;->getUnicodeName()[B

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/file/zip/ZipEncoding;->decode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 170
    .end local v0    # "crc32":Ljava/util/zip/CRC32;
    .end local v2    # "origCRC32":J
    :cond_0
    :goto_0
    return-object v4

    .line 161
    .restart local v0    # "crc32":Ljava/util/zip/CRC32;
    .restart local v2    # "origCRC32":J
    :catch_0
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method static setNameAndCommentFromExtraFields(Lcom/file/zip/ZipEntry;[B[B)V
    .locals 6
    .param p0, "ze"    # Lcom/file/zip/ZipEntry;
    .param p1, "originalNameBytes"    # [B
    .param p2, "commentBytes"    # [B

    .prologue
    .line 123
    sget-object v5, Lcom/file/zip/UnicodePathExtraField;->UPATH_ID:Lcom/file/zip/ZipShort;

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipEntry;->getExtraField(Lcom/file/zip/ZipShort;)Lcom/file/zip/ZipExtraField;

    move-result-object v1

    .line 122
    check-cast v1, Lcom/file/zip/UnicodePathExtraField;

    .line 124
    .local v1, "name":Lcom/file/zip/UnicodePathExtraField;
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "originalName":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/file/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lcom/file/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "newName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    invoke-virtual {p0, v3}, Lcom/file/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 131
    :cond_0
    if-eqz p2, :cond_1

    array-length v5, p2

    if-lez v5, :cond_1

    .line 133
    sget-object v5, Lcom/file/zip/UnicodeCommentExtraField;->UCOM_ID:Lcom/file/zip/ZipShort;

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipEntry;->getExtraField(Lcom/file/zip/ZipShort;)Lcom/file/zip/ZipExtraField;

    move-result-object v0

    .line 132
    check-cast v0, Lcom/file/zip/UnicodeCommentExtraField;

    .line 135
    .local v0, "cmt":Lcom/file/zip/UnicodeCommentExtraField;
    invoke-static {v0, p2}, Lcom/file/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lcom/file/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "newComment":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {p0, v2}, Lcom/file/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 140
    .end local v0    # "cmt":Lcom/file/zip/UnicodeCommentExtraField;
    .end local v2    # "newComment":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static supportsEncryptionOf(Lcom/file/zip/ZipEntry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/file/zip/ZipEntry;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getGeneralPurposeBit()Lcom/file/zip/GeneralPurposeBit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/file/zip/GeneralPurposeBit;->usesEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static supportsMethodOf(Lcom/file/zip/ZipEntry;)Z
    .locals 2
    .param p0, "entry"    # Lcom/file/zip/ZipEntry;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 210
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static toDosTime(Ljava/util/Date;)Lcom/file/zip/ZipLong;
    .locals 4
    .param p0, "time"    # Ljava/util/Date;

    .prologue
    .line 41
    new-instance v0, Lcom/file/zip/ZipLong;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/file/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/file/zip/ZipLong;-><init>([B)V

    return-object v0
.end method

.method public static toDosTime(J)[B
    .locals 8
    .param p0, "t"    # J

    .prologue
    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 53
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 55
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 56
    .local v4, "year":I
    const/16 v5, 0x7bc

    if-ge v4, v5, :cond_0

    .line 57
    sget-object v5, Lcom/file/zip/ZipUtil;->DOS_TIME_MIN:[B

    invoke-static {v5}, Lcom/file/zip/ZipUtil;->copy([B)[B

    move-result-object v5

    .line 66
    :goto_0
    return-object v5

    .line 59
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 60
    .local v1, "month":I
    add-int/lit16 v5, v4, -0x7bc

    shl-int/lit8 v5, v5, 0x19

    .line 61
    shl-int/lit8 v6, v1, 0x15

    .line 60
    or-int/2addr v5, v6

    .line 62
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    .line 60
    or-int/2addr v5, v6

    .line 63
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0xb

    .line 60
    or-int/2addr v5, v6

    .line 64
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x5

    .line 60
    or-int/2addr v5, v6

    .line 65
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    .line 60
    or-int/2addr v5, v6

    int-to-long v2, v5

    .line 66
    .local v2, "value":J
    invoke-static {v2, v3}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v5

    goto :goto_0
.end method
