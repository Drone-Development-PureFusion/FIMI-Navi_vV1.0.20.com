.class public Lcom/file/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/file/zip/ZipFile$BoundedInputStream;,
        Lcom/file/zip/ZipFile$NameAndComment;,
        Lcom/file/zip/ZipFile$OffsetEntry;
    }
.end annotation


# static fields
.field static final BYTE_SHIFT:I = 0x8

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CFH_LEN:I = 0x2a

.field private static final CFH_SIG:J

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field private static final MIN_EOCD_SIZE:I = 0x16

.field static final NIBLET_MASK:I = 0xf

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final ZIP64_EOCDL_LENGTH:I = 0x14

.field private static final ZIP64_EOCDL_LOCATOR_OFFSET:I = 0x8

.field private static final ZIP64_EOCD_CFD_LOCATOR_OFFSET:I = 0x30


# instance fields
.field private final CFH_BUF:[B

.field private final DWORD_BUF:[B

.field private final OFFSET_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/file/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final SHORT_BUF:[B

.field private final WORD_BUF:[B

.field private final archive:Ljava/io/RandomAccessFile;

.field private final archiveName:Ljava/lang/String;

.field private closed:Z

.field private final encoding:Ljava/lang/String;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/file/zip/ZipEntry;",
            "Lcom/file/zip/ZipFile$OffsetEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/file/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final useUnicodeExtraFields:Z

.field private final zipEncoding:Lcom/file/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 394
    sget-object v0, Lcom/file/zip/ZipOutputStream;->CFH_SIG:[B

    invoke-static {v0}, Lcom/file/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    .line 393
    sput-wide v0, Lcom/file/zip/ZipFile;->CFH_SIG:J

    .line 805
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/file/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/file/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "useUnicodeExtraFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1fd

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, p0, Lcom/file/zip/ZipFile;->entries:Ljava/util/Map;

    .line 93
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/file/zip/ZipFile;->nameMap:Ljava/util/Map;

    .line 135
    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/file/zip/ZipFile;->DWORD_BUF:[B

    .line 136
    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    .line 137
    const/16 v2, 0x2a

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    .line 138
    const/4 v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/file/zip/ZipFile;->SHORT_BUF:[B

    .line 959
    new-instance v2, Lcom/file/zip/ZipFile$1;

    invoke-direct {v2, p0}, Lcom/file/zip/ZipFile$1;-><init>(Lcom/file/zip/ZipFile;)V

    iput-object v2, p0, Lcom/file/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    .line 206
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/file/zip/ZipFile;->archiveName:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lcom/file/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 208
    invoke-static {p2}, Lcom/file/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lcom/file/zip/ZipEncoding;

    move-result-object v2

    iput-object v2, p0, Lcom/file/zip/ZipFile;->zipEncoding:Lcom/file/zip/ZipEncoding;

    .line 209
    iput-boolean p3, p0, Lcom/file/zip/ZipFile;->useUnicodeExtraFields:Z

    .line 210
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    .line 211
    const/4 v1, 0x0

    .line 214
    .local v1, "success":Z
    :try_start_0
    invoke-direct {p0}, Lcom/file/zip/ZipFile;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object v0

    .line 215
    .local v0, "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipFile$NameAndComment;>;"
    invoke-direct {p0, v0}, Lcom/file/zip/ZipFile;->resolveLocalFileHeaderData(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    const/4 v1, 0x1

    .line 218
    if-nez v1, :cond_0

    .line 220
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/file/zip/ZipFile;->closed:Z

    .line 221
    iget-object v2, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 217
    .end local v0    # "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipFile$NameAndComment;>;"
    :catchall_0
    move-exception v2

    .line 218
    if-nez v1, :cond_1

    .line 220
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/file/zip/ZipFile;->closed:Z

    .line 221
    iget-object v3, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 226
    :cond_1
    :goto_1
    throw v2

    .line 222
    .restart local v0    # "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipFile$NameAndComment;>;"
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipFile$NameAndComment;>;"
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/file/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/file/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 176
    return-void
.end method

.method static synthetic access$0(Lcom/file/zip/ZipFile;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/file/zip/ZipFile;->entries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lcom/file/zip/ZipFile;)Ljava/io/RandomAccessFile;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public static closeQuietly(Lcom/file/zip/ZipFile;)V
    .locals 1
    .param p0, "zipfile"    # Lcom/file/zip/ZipFile;

    .prologue
    .line 257
    if-eqz p0, :cond_0

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lcom/file/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/file/zip/ZipEntry;",
            "Lcom/file/zip/ZipFile$NameAndComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 412
    .local v0, "noUTF8Flag":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipFile$NameAndComment;>;"
    invoke-direct {p0}, Lcom/file/zip/ZipFile;->positionAtCentralDirectory()V

    .line 414
    iget-object v1, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 415
    iget-object v1, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lcom/file/zip/ZipLong;->getValue([B)J

    move-result-wide v2

    .line 417
    .local v2, "sig":J
    sget-wide v4, Lcom/file/zip/ZipFile;->CFH_SIG:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/file/zip/ZipFile;->startsWithLocalFileHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    new-instance v1, Ljava/io/IOException;

    const-string v4, "central directory is empty, can\'t expand corrupt archive."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_0
    invoke-direct {p0, v0}, Lcom/file/zip/ZipFile;->readCentralDirectoryEntry(Ljava/util/Map;)V

    .line 424
    iget-object v1, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 425
    iget-object v1, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lcom/file/zip/ZipLong;->getValue([B)J

    move-result-wide v2

    .line 422
    :cond_1
    sget-wide v4, Lcom/file/zip/ZipFile;->CFH_SIG:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 427
    return-object v0
.end method

.method private positionAtCentralDirectory()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x14

    .line 669
    invoke-direct {p0}, Lcom/file/zip/ZipFile;->positionAtEndOfCentralDirectoryRecord()V

    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, "found":Z
    iget-object v2, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    const/4 v1, 0x1

    .line 673
    .local v1, "searchedForZip64EOCD":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 674
    iget-object v2, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 675
    iget-object v2, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 676
    sget-object v2, Lcom/file/zip/ZipOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    iget-object v3, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 678
    :cond_0
    if-nez v0, :cond_3

    .line 680
    if-eqz v1, :cond_1

    .line 681
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/file/zip/ZipFile;->skipBytes(I)V

    .line 683
    :cond_1
    invoke-direct {p0}, Lcom/file/zip/ZipFile;->positionAtCentralDirectory32()V

    .line 687
    :goto_1
    return-void

    .line 672
    .end local v1    # "searchedForZip64EOCD":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 685
    .restart local v1    # "searchedForZip64EOCD":Z
    :cond_3
    invoke-direct {p0}, Lcom/file/zip/ZipFile;->positionAtCentralDirectory64()V

    goto :goto_1
.end method

.method private positionAtCentralDirectory32()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/file/zip/ZipFile;->skipBytes(I)V

    .line 720
    iget-object v0, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 721
    iget-object v0, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    invoke-static {v1}, Lcom/file/zip/ZipLong;->getValue([B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 722
    return-void
.end method

.method private positionAtCentralDirectory64()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/file/zip/ZipFile;->skipBytes(I)V

    .line 699
    iget-object v0, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/file/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 700
    iget-object v0, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/file/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lcom/file/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 701
    iget-object v0, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 702
    iget-object v0, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lcom/file/zip/ZipOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive\'s ZIP64 end of central directory locator is corrupt."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/file/zip/ZipFile;->skipBytes(I)V

    .line 708
    iget-object v0, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/file/zip/ZipFile;->DWORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 709
    iget-object v0, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/file/zip/ZipFile;->DWORD_BUF:[B

    invoke-static {v1}, Lcom/file/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 710
    return-void
.end method

.method private positionAtEndOfCentralDirectoryRecord()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    const-wide/16 v2, 0x16

    const-wide/32 v4, 0x10015

    .line 731
    sget-object v6, Lcom/file/zip/ZipOutputStream;->EOCD_SIG:[B

    move-object v1, p0

    .line 730
    invoke-direct/range {v1 .. v6}, Lcom/file/zip/ZipFile;->tryToLocateSignature(JJ[B)Z

    move-result v0

    .line 732
    .local v0, "found":Z
    if-nez v0, :cond_0

    .line 733
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "archive is not a ZIP archive"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    :cond_0
    return-void
.end method

.method private readCentralDirectoryEntry(Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/file/zip/ZipEntry;",
            "Lcom/file/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "noUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipFile$NameAndComment;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 443
    const/4 v14, 0x0

    .line 444
    .local v14, "off":I
    new-instance v19, Lcom/file/zip/ZipEntry;

    invoke-direct/range {v19 .. v19}, Lcom/file/zip/ZipEntry;-><init>()V

    .line 446
    .local v19, "ze":Lcom/file/zip/ZipEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipShort;->getValue([BI)I

    move-result v18

    .line 447
    .local v18, "versionMadeBy":I
    add-int/lit8 v14, v14, 0x2

    .line 448
    shr-int/lit8 v20, v18, 0x8

    and-int/lit8 v20, v20, 0xf

    invoke-virtual/range {v19 .. v20}, Lcom/file/zip/ZipEntry;->setPlatform(I)V

    .line 450
    add-int/lit8 v14, v14, 0x2

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/GeneralPurposeBit;->parse([BI)Lcom/file/zip/GeneralPurposeBit;

    move-result-object v12

    .line 453
    .local v12, "gpFlag":Lcom/file/zip/GeneralPurposeBit;
    invoke-virtual {v12}, Lcom/file/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v13

    .line 455
    .local v13, "hasUTF8Flag":Z
    if-eqz v13, :cond_1

    sget-object v8, Lcom/file/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lcom/file/zip/ZipEncoding;

    .line 456
    .local v8, "entryEncoding":Lcom/file/zip/ZipEncoding;
    :goto_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/file/zip/ZipEntry;->setGeneralPurposeBit(Lcom/file/zip/GeneralPurposeBit;)V

    .line 458
    add-int/lit8 v14, v14, 0x2

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipShort;->getValue([BI)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/file/zip/ZipEntry;->setMethod(I)V

    .line 461
    add-int/lit8 v14, v14, 0x2

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/file/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v16

    .line 464
    .local v16, "time":J
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/file/zip/ZipEntry;->setTime(J)V

    .line 465
    add-int/lit8 v14, v14, 0x4

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/file/zip/ZipEntry;->setCrc(J)V

    .line 468
    add-int/lit8 v14, v14, 0x4

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/file/zip/ZipEntry;->setCompressedSize(J)V

    .line 471
    add-int/lit8 v14, v14, 0x4

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/file/zip/ZipEntry;->setSize(J)V

    .line 474
    add-int/lit8 v14, v14, 0x4

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipShort;->getValue([BI)I

    move-result v11

    .line 477
    .local v11, "fileNameLen":I
    add-int/lit8 v14, v14, 0x2

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipShort;->getValue([BI)I

    move-result v9

    .line 480
    .local v9, "extraLen":I
    add-int/lit8 v14, v14, 0x2

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipShort;->getValue([BI)I

    move-result v6

    .line 483
    .local v6, "commentLen":I
    add-int/lit8 v14, v14, 0x2

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipShort;->getValue([BI)I

    move-result v7

    .line 486
    .local v7, "diskStart":I
    add-int/lit8 v14, v14, 0x2

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipShort;->getValue([BI)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/file/zip/ZipEntry;->setInternalAttributes(I)V

    .line 489
    add-int/lit8 v14, v14, 0x2

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/file/zip/ZipEntry;->setExternalAttributes(J)V

    .line 492
    add-int/lit8 v14, v14, 0x4

    .line 494
    new-array v10, v11, [B

    .line 495
    .local v10, "fileName":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 496
    invoke-interface {v8, v10}, Lcom/file/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/file/zip/ZipEntry;->setName(Ljava/lang/String;[B)V

    .line 499
    new-instance v15, Lcom/file/zip/ZipFile$OffsetEntry;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/file/zip/ZipFile$OffsetEntry;-><init>(Lcom/file/zip/ZipFile$OffsetEntry;)V

    .line 500
    .local v15, "offset":Lcom/file/zip/ZipFile$OffsetEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->CFH_BUF:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/file/zip/ZipLong;->getValue([BI)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v15, v0, v1}, Lcom/file/zip/ZipFile$OffsetEntry;->access$3(Lcom/file/zip/ZipFile$OffsetEntry;J)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->entries:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    new-array v4, v9, [B

    .line 507
    .local v4, "cdExtraData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 508
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/file/zip/ZipEntry;->setCentralDirectoryExtra([B)V

    .line 510
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15, v7}, Lcom/file/zip/ZipFile;->setSizesAndOffsetFromZip64Extra(Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipFile$OffsetEntry;I)V

    .line 512
    new-array v5, v6, [B

    .line 513
    .local v5, "comment":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 514
    invoke-interface {v8, v5}, Lcom/file/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/file/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 516
    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/file/zip/ZipFile;->useUnicodeExtraFields:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 517
    new-instance v20, Lcom/file/zip/ZipFile$NameAndComment;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v5, v1}, Lcom/file/zip/ZipFile$NameAndComment;-><init>([B[BLcom/file/zip/ZipFile$NameAndComment;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_0
    return-void

    .line 455
    .end local v4    # "cdExtraData":[B
    .end local v5    # "comment":[B
    .end local v6    # "commentLen":I
    .end local v7    # "diskStart":I
    .end local v8    # "entryEncoding":Lcom/file/zip/ZipEncoding;
    .end local v9    # "extraLen":I
    .end local v10    # "fileName":[B
    .end local v11    # "fileNameLen":I
    .end local v15    # "offset":Lcom/file/zip/ZipFile$OffsetEntry;
    .end local v16    # "time":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/file/zip/ZipFile;->zipEncoding:Lcom/file/zip/ZipEncoding;

    goto/16 :goto_0
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/file/zip/ZipEntry;",
            "Lcom/file/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 822
    .local p1, "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipFile$NameAndComment;>;"
    new-instance v14, Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->entries:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 823
    .local v14, "origMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipFile$OffsetEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->entries:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V

    .line 824
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_0

    .line 860
    return-void

    .line 824
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 825
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipFile$OffsetEntry;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/file/zip/ZipEntry;

    .line 826
    .local v16, "ze":Lcom/file/zip/ZipEntry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/file/zip/ZipFile$OffsetEntry;

    .line 827
    .local v12, "offsetEntry":Lcom/file/zip/ZipFile$OffsetEntry;
    invoke-static {v12}, Lcom/file/zip/ZipFile$OffsetEntry;->access$0(Lcom/file/zip/ZipFile$OffsetEntry;)J

    move-result-wide v10

    .line 828
    .local v10, "offset":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x1a

    add-long v20, v20, v10

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/file/zip/ZipShort;->getValue([B)I

    move-result v6

    .line 831
    .local v6, "fileNameLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->SHORT_BUF:[B

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/file/zip/ZipShort;->getValue([B)I

    move-result v5

    .line 833
    .local v5, "extraFieldLen":I
    move v7, v6

    .line 834
    .local v7, "lenToSkip":I
    :goto_1
    if-gtz v7, :cond_2

    .line 842
    new-array v8, v5, [B

    .line 843
    .local v8, "localExtraData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 844
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/file/zip/ZipEntry;->setExtra([B)V

    .line 845
    const-wide/16 v18, 0x1a

    add-long v18, v18, v10

    .line 846
    const-wide/16 v20, 0x2

    add-long v18, v18, v20

    const-wide/16 v20, 0x2

    add-long v18, v18, v20

    int-to-long v0, v6

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    int-to-long v0, v5

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    .line 845
    move-wide/from16 v0, v18

    invoke-static {v12, v0, v1}, Lcom/file/zip/ZipFile$OffsetEntry;->access$4(Lcom/file/zip/ZipFile$OffsetEntry;J)V

    .line 848
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 849
    invoke-virtual/range {v16 .. v16}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 850
    .local v13, "orig":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/file/zip/ZipFile$NameAndComment;

    .line 851
    .local v9, "nc":Lcom/file/zip/ZipFile$NameAndComment;
    invoke-static {v9}, Lcom/file/zip/ZipFile$NameAndComment;->access$1(Lcom/file/zip/ZipFile$NameAndComment;)[B

    move-result-object v18

    .line 852
    invoke-static {v9}, Lcom/file/zip/ZipFile$NameAndComment;->access$2(Lcom/file/zip/ZipFile$NameAndComment;)[B

    move-result-object v19

    .line 851
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/file/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lcom/file/zip/ZipEntry;[B[B)V

    .line 853
    invoke-virtual/range {v16 .. v16}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->nameMap:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    .end local v9    # "nc":Lcom/file/zip/ZipFile$NameAndComment;
    .end local v13    # "orig":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->entries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 835
    .end local v8    # "localExtraData":[B
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v15

    .line 836
    .local v15, "skipped":I
    if-gtz v15, :cond_3

    .line 837
    new-instance v17, Ljava/io/IOException;

    const-string v18, "failed to skip file name in local file header"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 840
    :cond_3
    sub-int/2addr v7, v15

    goto/16 :goto_1
.end method

.method private setSizesAndOffsetFromZip64Extra(Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipFile$OffsetEntry;I)V
    .locals 10
    .param p1, "ze"    # Lcom/file/zip/ZipEntry;
    .param p2, "offset"    # Lcom/file/zip/ZipFile$OffsetEntry;
    .param p3, "diskStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v8, 0xffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 539
    sget-object v6, Lcom/file/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lcom/file/zip/ZipShort;

    invoke-virtual {p1, v6}, Lcom/file/zip/ZipEntry;->getExtraField(Lcom/file/zip/ZipShort;)Lcom/file/zip/ZipExtraField;

    move-result-object v3

    .line 538
    check-cast v3, Lcom/file/zip/Zip64ExtendedInformationExtraField;

    .line 540
    .local v3, "z64":Lcom/file/zip/Zip64ExtendedInformationExtraField;
    if-eqz v3, :cond_2

    .line 541
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    move v2, v4

    .line 542
    .local v2, "hasUncompressedSize":Z
    :goto_0
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    move v0, v4

    .line 544
    .local v0, "hasCompressedSize":Z
    :goto_1
    invoke-static {p2}, Lcom/file/zip/ZipFile$OffsetEntry;->access$0(Lcom/file/zip/ZipFile$OffsetEntry;)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    move v1, v4

    .line 548
    .local v1, "hasRelativeHeaderOffset":Z
    :goto_2
    const v6, 0xffff

    if-ne p3, v6, :cond_6

    .line 545
    :goto_3
    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->reparseCentralDirectoryData(ZZZZ)V

    .line 550
    if-eqz v2, :cond_7

    .line 551
    invoke-virtual {v3}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->getSize()Lcom/file/zip/ZipEightByteInteger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/file/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/file/zip/ZipEntry;->setSize(J)V

    .line 556
    :cond_0
    :goto_4
    if-eqz v0, :cond_8

    .line 557
    invoke-virtual {v3}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lcom/file/zip/ZipEightByteInteger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/file/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/file/zip/ZipEntry;->setCompressedSize(J)V

    .line 562
    :cond_1
    :goto_5
    if-eqz v1, :cond_2

    .line 564
    invoke-virtual {v3}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->getRelativeHeaderOffset()Lcom/file/zip/ZipEightByteInteger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/file/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v4

    .line 563
    invoke-static {p2, v4, v5}, Lcom/file/zip/ZipFile$OffsetEntry;->access$3(Lcom/file/zip/ZipFile$OffsetEntry;J)V

    .line 567
    .end local v0    # "hasCompressedSize":Z
    .end local v1    # "hasRelativeHeaderOffset":Z
    .end local v2    # "hasUncompressedSize":Z
    :cond_2
    return-void

    :cond_3
    move v2, v5

    .line 541
    goto :goto_0

    .restart local v2    # "hasUncompressedSize":Z
    :cond_4
    move v0, v5

    .line 542
    goto :goto_1

    .restart local v0    # "hasCompressedSize":Z
    :cond_5
    move v1, v5

    .line 544
    goto :goto_2

    .restart local v1    # "hasRelativeHeaderOffset":Z
    :cond_6
    move v4, v5

    .line 548
    goto :goto_3

    .line 552
    :cond_7
    if-eqz v0, :cond_0

    .line 553
    new-instance v4, Lcom/file/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/file/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->setSize(Lcom/file/zip/ZipEightByteInteger;)V

    goto :goto_4

    .line 558
    :cond_8
    if-eqz v2, :cond_1

    .line 559
    new-instance v4, Lcom/file/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/file/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lcom/file/zip/ZipEightByteInteger;)V

    goto :goto_5
.end method

.method private skipBytes(I)V
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    const/4 v1, 0x0

    .line 783
    .local v1, "totalSkipped":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 790
    return-void

    .line 784
    :cond_0
    iget-object v2, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    sub-int v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v0

    .line 785
    .local v0, "skippedNow":I
    if-gtz v0, :cond_1

    .line 786
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 788
    :cond_1
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method private startsWithLocalFileHeader()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    iget-object v0, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 868
    iget-object v0, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 869
    iget-object v0, p0, Lcom/file/zip/ZipFile;->WORD_BUF:[B

    sget-object v1, Lcom/file/zip/ZipOutputStream;->LFH_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private tryToLocateSignature(JJ[B)Z
    .locals 11
    .param p1, "minDistanceFromEnd"    # J
    .param p3, "maxDistanceFromEnd"    # J
    .param p5, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 745
    const/4 v1, 0x0

    .line 746
    .local v1, "found":Z
    iget-object v6, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sub-long v2, v6, p1

    .line 748
    .local v2, "off":J
    iget-object v6, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sub-long/2addr v6, p3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 749
    .local v4, "stopSearching":J
    cmp-long v6, v2, v8

    if-ltz v6, :cond_0

    .line 750
    :goto_0
    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 771
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 772
    iget-object v6, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 774
    :cond_1
    return v1

    .line 751
    :cond_2
    iget-object v6, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 752
    iget-object v6, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 753
    .local v0, "curr":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 756
    const/4 v6, 0x0

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 757
    iget-object v6, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 758
    const/4 v6, 0x1

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 759
    iget-object v6, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 760
    const/4 v6, 0x2

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 761
    iget-object v6, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 762
    const/4 v6, 0x3

    aget-byte v6, p5, v6

    if-ne v0, v6, :cond_3

    .line 763
    const/4 v1, 0x1

    .line 764
    goto :goto_1

    .line 750
    :cond_3
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    goto :goto_0
.end method


# virtual methods
.method public canReadEntryData(Lcom/file/zip/ZipEntry;)Z
    .locals 1
    .param p1, "ze"    # Lcom/file/zip/ZipEntry;

    .prologue
    .line 313
    invoke-static {p1}, Lcom/file/zip/ZipUtil;->canHandleEntryData(Lcom/file/zip/ZipEntry;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/file/zip/ZipFile;->closed:Z

    .line 248
    iget-object v0, p0, Lcom/file/zip/ZipFile;->archive:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 249
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 361
    :try_start_0
    iget-boolean v0, p0, Lcom/file/zip/ZipFile;->closed:Z

    if-nez v0, :cond_0

    .line 362
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cleaning up unclosed ZipFile for archive "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/file/zip/ZipFile;->archiveName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/file/zip/ZipFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 369
    return-void

    .line 366
    :catchall_0
    move-exception v0

    .line 367
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 368
    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/file/zip/ZipFile;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/file/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/file/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesInPhysicalOrder()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/file/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v1, p0, Lcom/file/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/file/zip/ZipEntry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/file/zip/ZipEntry;

    .line 291
    .local v0, "allEntries":[Lcom/file/zip/ZipEntry;
    iget-object v1, p0, Lcom/file/zip/ZipFile;->OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 292
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getEntry(Ljava/lang/String;)Lcom/file/zip/ZipEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/file/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/file/zip/ZipEntry;

    return-object v0
.end method

.method public getInputStream(Lcom/file/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 8
    .param p1, "ze"    # Lcom/file/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v1, p0, Lcom/file/zip/ZipFile;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/file/zip/ZipFile$OffsetEntry;

    .line 327
    .local v7, "offsetEntry":Lcom/file/zip/ZipFile$OffsetEntry;
    if-nez v7, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 340
    :goto_0
    :sswitch_0
    return-object v0

    .line 330
    :cond_0
    invoke-static {p1}, Lcom/file/zip/ZipUtil;->checkRequestedFeatures(Lcom/file/zip/ZipEntry;)V

    .line 331
    invoke-static {v7}, Lcom/file/zip/ZipFile$OffsetEntry;->access$1(Lcom/file/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    .line 333
    .local v2, "start":J
    new-instance v0, Lcom/file/zip/ZipFile$BoundedInputStream;

    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/file/zip/ZipFile$BoundedInputStream;-><init>(Lcom/file/zip/ZipFile;JJ)V

    .line 334
    .local v0, "bis":Lcom/file/zip/ZipFile$BoundedInputStream;
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 348
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found unsupported compression method "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :sswitch_1
    invoke-virtual {v0}, Lcom/file/zip/ZipFile$BoundedInputStream;->addDummy()V

    .line 339
    new-instance v6, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 340
    .local v6, "inflater":Ljava/util/zip/Inflater;
    new-instance v1, Lcom/file/zip/ZipFile$2;

    invoke-direct {v1, p0, v0, v6, v6}, Lcom/file/zip/ZipFile$2;-><init>(Lcom/file/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    move-object v0, v1

    goto :goto_0

    .line 334
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
