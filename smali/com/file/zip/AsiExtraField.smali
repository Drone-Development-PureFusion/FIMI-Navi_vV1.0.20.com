.class public Lcom/file/zip/AsiExtraField;
.super Ljava/lang/Object;
.source "AsiExtraField.java"

# interfaces
.implements Lcom/file/zip/ZipExtraField;
.implements Lcom/file/zip/UnixStat;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final HEADER_ID:Lcom/file/zip/ZipShort;

.field private static final WORD:I = 0x4


# instance fields
.field private crc:Ljava/util/zip/CRC32;

.field private dirFlag:Z

.field private gid:I

.field private link:Ljava/lang/String;

.field private mode:I

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/file/zip/ZipShort;

    const/16 v1, 0x756e

    invoke-direct {v0, v1}, Lcom/file/zip/ZipShort;-><init>(I)V

    sput-object v0, Lcom/file/zip/AsiExtraField;->HEADER_ID:Lcom/file/zip/ZipShort;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v1, p0, Lcom/file/zip/AsiExtraField;->mode:I

    .line 67
    iput v1, p0, Lcom/file/zip/AsiExtraField;->uid:I

    .line 73
    iput v1, p0, Lcom/file/zip/AsiExtraField;->gid:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/file/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/file/zip/AsiExtraField;->dirFlag:Z

    .line 94
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/file/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 98
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 344
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/file/zip/AsiExtraField;

    .line 345
    .local v0, "cloned":Lcom/file/zip/AsiExtraField;
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v2, v0, Lcom/file/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    return-object v0

    .line 347
    .end local v0    # "cloned":Lcom/file/zip/AsiExtraField;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "cnfe":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCentralDirectoryData()[B
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lcom/file/zip/ZipShort;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->getLocalFileDataLength()Lcom/file/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/file/zip/AsiExtraField;->gid:I

    return v0
.end method

.method public getHeaderId()Lcom/file/zip/ZipShort;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/file/zip/AsiExtraField;->HEADER_ID:Lcom/file/zip/ZipShort;

    return-object v0
.end method

.method public getLinkedFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/file/zip/AsiExtraField;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->getLocalFileDataLength()Lcom/file/zip/ZipShort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/file/zip/ZipShort;->getValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    new-array v2, v5, [B

    .line 143
    .local v2, "data":[B
    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    invoke-static {v5, v8, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 147
    .local v3, "linkArray":[B
    array-length v5, v3

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v5

    invoke-static {v5, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->getUserId()I

    move-result v5

    invoke-static {v5}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    .line 151
    const/4 v6, 0x6

    .line 150
    invoke-static {v5, v8, v2, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->getGroupId()I

    move-result v5

    invoke-static {v5}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    .line 153
    const/16 v6, 0x8

    .line 152
    invoke-static {v5, v8, v2, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    const/16 v5, 0xa

    array-length v6, v3

    invoke-static {v3, v8, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v5, p0, Lcom/file/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 159
    iget-object v5, p0, Lcom/file/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 160
    iget-object v5, p0, Lcom/file/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 162
    .local v0, "checksum":J
    array-length v5, v2

    add-int/lit8 v5, v5, 0x4

    new-array v4, v5, [B

    .line 163
    .local v4, "result":[B
    invoke-static {v0, v1}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v5

    invoke-static {v5, v8, v4, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    array-length v5, v2

    invoke-static {v2, v8, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    return-object v4
.end method

.method public getLocalFileDataLength()Lcom/file/zip/ZipShort;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/file/zip/ZipShort;

    .line 121
    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0xe

    .line 116
    invoke-direct {v0, v1}, Lcom/file/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/file/zip/AsiExtraField;->mode:I

    return v0
.end method

.method protected getMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 332
    const v0, 0x8000

    .line 333
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->isLink()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    const v0, 0xa000

    .line 338
    :cond_0
    :goto_0
    and-int/lit16 v1, p1, 0xfff

    or-int/2addr v1, v0

    return v1

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const/16 v0, 0x4000

    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/file/zip/AsiExtraField;->uid:I

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/file/zip/AsiExtraField;->dirFlag:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->isLink()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLink()Z
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/file/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseFromLocalFileData([BII)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 295
    invoke-static {p1, p2}, Lcom/file/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    .line 296
    .local v0, "givenChecksum":J
    add-int/lit8 v8, p3, -0x4

    new-array v6, v8, [B

    .line 297
    .local v6, "tmp":[B
    add-int/lit8 v8, p2, 0x4

    add-int/lit8 v9, p3, -0x4

    invoke-static {p1, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget-object v8, p0, Lcom/file/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->reset()V

    .line 299
    iget-object v8, p0, Lcom/file/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8, v6}, Ljava/util/zip/CRC32;->update([B)V

    .line 300
    iget-object v8, p0, Lcom/file/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 301
    .local v4, "realChecksum":J
    cmp-long v8, v0, v4

    if-eqz v8, :cond_0

    .line 302
    new-instance v7, Ljava/util/zip/ZipException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bad CRC checksum "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 304
    const-string v9, " instead of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 305
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 302
    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 308
    :cond_0
    invoke-static {v6, v7}, Lcom/file/zip/ZipShort;->getValue([BI)I

    move-result v3

    .line 310
    .local v3, "newMode":I
    const/4 v8, 0x2

    invoke-static {v6, v8}, Lcom/file/zip/ZipLong;->getValue([BI)J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 311
    .local v2, "linkArray":[B
    const/4 v8, 0x6

    invoke-static {v6, v8}, Lcom/file/zip/ZipShort;->getValue([BI)I

    move-result v8

    iput v8, p0, Lcom/file/zip/AsiExtraField;->uid:I

    .line 312
    const/16 v8, 0x8

    invoke-static {v6, v8}, Lcom/file/zip/ZipShort;->getValue([BI)I

    move-result v8

    iput v8, p0, Lcom/file/zip/AsiExtraField;->gid:I

    .line 314
    array-length v8, v2

    if-nez v8, :cond_2

    .line 315
    const-string v8, ""

    iput-object v8, p0, Lcom/file/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 321
    :goto_0
    and-int/lit16 v8, v3, 0x4000

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    invoke-virtual {p0, v7}, Lcom/file/zip/AsiExtraField;->setDirectory(Z)V

    .line 322
    invoke-virtual {p0, v3}, Lcom/file/zip/AsiExtraField;->setMode(I)V

    .line 323
    return-void

    .line 317
    :cond_2
    const/16 v8, 0xa

    array-length v9, v2

    invoke-static {v6, v8, v2, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v8, p0, Lcom/file/zip/AsiExtraField;->link:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDirectory(Z)V
    .locals 1
    .param p1, "dirFlag"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/file/zip/AsiExtraField;->dirFlag:Z

    .line 272
    iget v0, p0, Lcom/file/zip/AsiExtraField;->mode:I

    invoke-virtual {p0, v0}, Lcom/file/zip/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/file/zip/AsiExtraField;->mode:I

    .line 273
    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .param p1, "gid"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/file/zip/AsiExtraField;->gid:I

    .line 202
    return-void
.end method

.method public setLinkedFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/file/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 223
    iget v0, p0, Lcom/file/zip/AsiExtraField;->mode:I

    invoke-virtual {p0, v0}, Lcom/file/zip/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/file/zip/AsiExtraField;->mode:I

    .line 224
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/file/zip/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/file/zip/AsiExtraField;->mode:I

    .line 254
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/file/zip/AsiExtraField;->uid:I

    .line 184
    return-void
.end method
