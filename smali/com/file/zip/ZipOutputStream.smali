.class public Lcom/file/zip/ZipOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ZipOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/file/zip/ZipOutputStream$CurrentEntry;,
        Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field protected static final CFH_SIG:[B

.field protected static final DD_SIG:[B

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field static final DEFAULT_ENCODING:Ljava/lang/String;

.field public static final DEFLATED:I = 0x8

.field private static final DEFLATER_BLOCK_SIZE:I = 0x2000

.field public static final EFS_FLAG:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EMPTY:[B

.field protected static final EOCD_SIG:[B

.field protected static final LFH_SIG:[B

.field private static final LZERO:[B

.field private static final ONE:[B

.field public static final STORED:I

.field private static final ZERO:[B

.field static final ZIP64_EOCD_LOC_SIG:[B

.field static final ZIP64_EOCD_SIG:[B


# instance fields
.field protected buf:[B

.field private cdLength:J

.field private cdOffset:J

.field private comment:Ljava/lang/String;

.field private final crc:Ljava/util/zip/CRC32;

.field private createUnicodeExtraFields:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

.field protected final def:Ljava/util/zip/Deflater;

.field private encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/file/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

.field private fallbackToUTF8:Z

.field private finished:Z

.field private hasCompressionLevelChanged:Z

.field private hasUsedZip64:Z

.field private level:I

.field private method:I

.field private final offsets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/zip/ZipEntry;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final raf:Ljava/io/RandomAccessFile;

.field private useUTF8Flag:Z

.field private written:J

.field private zip64Mode:Lcom/file/zip/Zip64Mode;

.field private zipEncoding:Lcom/file/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/file/zip/ZipOutputStream;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/file/zip/ZipOutputStream;->EMPTY:[B

    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/file/zip/ZipOutputStream;->ZERO:[B

    .line 203
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/file/zip/ZipOutputStream;->LZERO:[B

    .line 866
    sget-object v0, Lcom/file/zip/ZipLong;->LFH_SIG:Lcom/file/zip/ZipLong;

    invoke-virtual {v0}, Lcom/file/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/file/zip/ZipOutputStream;->LFH_SIG:[B

    .line 872
    sget-object v0, Lcom/file/zip/ZipLong;->DD_SIG:Lcom/file/zip/ZipLong;

    invoke-virtual {v0}, Lcom/file/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/file/zip/ZipOutputStream;->DD_SIG:[B

    .line 878
    sget-object v0, Lcom/file/zip/ZipLong;->CFH_SIG:Lcom/file/zip/ZipLong;

    invoke-virtual {v0}, Lcom/file/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/file/zip/ZipOutputStream;->CFH_SIG:[B

    .line 884
    const-wide/32 v0, 0x6054b50

    invoke-static {v0, v1}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/file/zip/ZipOutputStream;->EOCD_SIG:[B

    .line 888
    const-wide/32 v0, 0x6064b50

    invoke-static {v0, v1}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/file/zip/ZipOutputStream;->ZIP64_EOCD_SIG:[B

    .line 892
    const-wide/32 v0, 0x7064b50

    invoke-static {v0, v1}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/file/zip/ZipOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    .line 1287
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/file/zip/ZipOutputStream;->ONE:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 302
    invoke-direct {p0, v4}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    iput-boolean v5, p0, Lcom/file/zip/ZipOutputStream;->finished:Z

    .line 132
    const-string v3, ""

    iput-object v3, p0, Lcom/file/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 139
    const/4 v3, -0x1

    iput v3, p0, Lcom/file/zip/ZipOutputStream;->level:I

    .line 147
    iput-boolean v5, p0, Lcom/file/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 154
    const/16 v3, 0x8

    iput v3, p0, Lcom/file/zip/ZipOutputStream;->method:I

    .line 161
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/file/zip/ZipOutputStream;->entries:Ljava/util/List;

    .line 168
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v3, p0, Lcom/file/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 175
    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 182
    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->cdOffset:J

    .line 189
    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->cdLength:J

    .line 210
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/file/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    .line 221
    iput-object v4, p0, Lcom/file/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 230
    sget-object v3, Lcom/file/zip/ZipOutputStream;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-static {v3}, Lcom/file/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lcom/file/zip/ZipEncoding;

    move-result-object v3

    iput-object v3, p0, Lcom/file/zip/ZipOutputStream;->zipEncoding:Lcom/file/zip/ZipEncoding;

    .line 238
    new-instance v3, Ljava/util/zip/Deflater;

    iget v4, p0, Lcom/file/zip/ZipOutputStream;->level:I

    invoke-direct {v3, v4, v8}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v3, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 250
    const/16 v3, 0x200

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/file/zip/ZipOutputStream;->buf:[B

    .line 265
    iput-boolean v8, p0, Lcom/file/zip/ZipOutputStream;->useUTF8Flag:Z

    .line 270
    iput-boolean v5, p0, Lcom/file/zip/ZipOutputStream;->fallbackToUTF8:Z

    .line 275
    sget-object v3, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    iput-object v3, p0, Lcom/file/zip/ZipOutputStream;->createUnicodeExtraFields:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 280
    iput-boolean v5, p0, Lcom/file/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 282
    sget-object v3, Lcom/file/zip/Zip64Mode;->AsNeeded:Lcom/file/zip/Zip64Mode;

    iput-object v3, p0, Lcom/file/zip/ZipOutputStream;->zip64Mode:Lcom/file/zip/Zip64Mode;

    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, "_raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0    # "_raf":Ljava/io/RandomAccessFile;
    .local v1, "_raf":Ljava/io/RandomAccessFile;
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 318
    .end local v1    # "_raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "_raf":Ljava/io/RandomAccessFile;
    :goto_0
    iput-object v0, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 319
    return-void

    .line 307
    :catch_0
    move-exception v2

    .line 308
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v0, :cond_0

    .line 310
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 314
    :goto_2
    const/4 v0, 0x0

    .line 316
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/file/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    goto :goto_0

    .line 311
    :catch_1
    move-exception v3

    goto :goto_2

    .line 307
    .end local v0    # "_raf":Ljava/io/RandomAccessFile;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "_raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "_raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "_raf":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 290
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    iput-boolean v2, p0, Lcom/file/zip/ZipOutputStream;->finished:Z

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/file/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/file/zip/ZipOutputStream;->level:I

    .line 147
    iput-boolean v2, p0, Lcom/file/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 154
    const/16 v0, 0x8

    iput v0, p0, Lcom/file/zip/ZipOutputStream;->method:I

    .line 161
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/file/zip/ZipOutputStream;->entries:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/file/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 175
    iput-wide v4, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 182
    iput-wide v4, p0, Lcom/file/zip/ZipOutputStream;->cdOffset:J

    .line 189
    iput-wide v4, p0, Lcom/file/zip/ZipOutputStream;->cdLength:J

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/file/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    .line 221
    iput-object v6, p0, Lcom/file/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 230
    sget-object v0, Lcom/file/zip/ZipOutputStream;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-static {v0}, Lcom/file/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lcom/file/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lcom/file/zip/ZipOutputStream;->zipEncoding:Lcom/file/zip/ZipEncoding;

    .line 238
    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p0, Lcom/file/zip/ZipOutputStream;->level:I

    invoke-direct {v0, v1, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 250
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/file/zip/ZipOutputStream;->buf:[B

    .line 265
    iput-boolean v3, p0, Lcom/file/zip/ZipOutputStream;->useUTF8Flag:Z

    .line 270
    iput-boolean v2, p0, Lcom/file/zip/ZipOutputStream;->fallbackToUTF8:Z

    .line 275
    sget-object v0, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    iput-object v0, p0, Lcom/file/zip/ZipOutputStream;->createUnicodeExtraFields:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 280
    iput-boolean v2, p0, Lcom/file/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 282
    sget-object v0, Lcom/file/zip/Zip64Mode;->AsNeeded:Lcom/file/zip/Zip64Mode;

    iput-object v0, p0, Lcom/file/zip/ZipOutputStream;->zip64Mode:Lcom/file/zip/Zip64Mode;

    .line 291
    iput-object v6, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 292
    return-void
.end method

.method private addUnicodeExtraFields(Lcom/file/zip/ZipEntry;ZLjava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "ze"    # Lcom/file/zip/ZipEntry;
    .param p2, "encodable"    # Z
    .param p3, "name"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1004
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->createUnicodeExtraFields:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    sget-object v4, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    if-eq v3, v4, :cond_0

    .line 1005
    if-nez p2, :cond_1

    .line 1006
    :cond_0
    new-instance v3, Lcom/file/zip/UnicodePathExtraField;

    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1007
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 1008
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    .line 1009
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 1010
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 1009
    sub-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/file/zip/UnicodePathExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 1006
    invoke-virtual {p1, v3}, Lcom/file/zip/ZipEntry;->addExtraField(Lcom/file/zip/ZipExtraField;)V

    .line 1013
    :cond_1
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "comm":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1016
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->zipEncoding:Lcom/file/zip/ZipEncoding;

    invoke-interface {v3, v0}, Lcom/file/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v2

    .line 1018
    .local v2, "commentEncodable":Z
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->createUnicodeExtraFields:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    sget-object v4, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    if-eq v3, v4, :cond_2

    .line 1019
    if-nez v2, :cond_3

    .line 1020
    :cond_2
    invoke-direct {p0, p1}, Lcom/file/zip/ZipOutputStream;->getEntryEncoding(Ljava/util/zip/ZipEntry;)Lcom/file/zip/ZipEncoding;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/file/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1021
    .local v1, "commentB":Ljava/nio/ByteBuffer;
    new-instance v3, Lcom/file/zip/UnicodeCommentExtraField;

    .line 1022
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 1023
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    .line 1024
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 1025
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 1024
    sub-int/2addr v6, v7

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/file/zip/UnicodeCommentExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 1021
    invoke-virtual {p1, v3}, Lcom/file/zip/ZipEntry;->addExtraField(Lcom/file/zip/ZipExtraField;)V

    .line 1029
    .end local v1    # "commentB":Ljava/nio/ByteBuffer;
    .end local v2    # "commentEncodable":Z
    :cond_3
    return-void
.end method

.method protected static adjustToLong(I)J
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 1394
    invoke-static {p0}, Lcom/file/zip/ZipUtil;->adjustToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private deflateUntilInputIsNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1398
    :goto_0
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    return-void

    .line 1399
    :cond_0
    invoke-virtual {p0}, Lcom/file/zip/ZipOutputStream;->deflate()V

    goto :goto_0
.end method

.method private flushDeflater()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/file/zip/ZipOutputStream;->deflate()V

    goto :goto_0
.end method

.method private getEffectiveZip64Mode(Ljava/util/zip/ZipEntry;)Lcom/file/zip/Zip64Mode;
    .locals 4
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->zip64Mode:Lcom/file/zip/Zip64Mode;

    sget-object v1, Lcom/file/zip/Zip64Mode;->AsNeeded:Lcom/file/zip/Zip64Mode;

    if-ne v0, v1, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 1479
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1480
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->zip64Mode:Lcom/file/zip/Zip64Mode;

    .line 1483
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/file/zip/Zip64Mode;->Never:Lcom/file/zip/Zip64Mode;

    goto :goto_0
.end method

.method private getEntryEncoding(Ljava/util/zip/ZipEntry;)Lcom/file/zip/ZipEncoding;
    .locals 3
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 1487
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->zipEncoding:Lcom/file/zip/ZipEncoding;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/file/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v0

    .line 1488
    .local v0, "encodable":Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/file/zip/ZipOutputStream;->fallbackToUTF8:Z

    if-eqz v1, :cond_0

    .line 1489
    sget-object v1, Lcom/file/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lcom/file/zip/ZipEncoding;

    .line 1488
    :goto_0
    return-object v1

    .line 1489
    :cond_0
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->zipEncoding:Lcom/file/zip/ZipEncoding;

    goto :goto_0
.end method

.method private getName(Ljava/util/zip/ZipEntry;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1493
    invoke-direct {p0, p1}, Lcom/file/zip/ZipOutputStream;->getEntryEncoding(Ljava/util/zip/ZipEntry;)Lcom/file/zip/ZipEncoding;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/file/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private getZip64Extra(Lcom/file/zip/ZipEntry;)Lcom/file/zip/Zip64ExtendedInformationExtraField;
    .locals 4
    .param p1, "ze"    # Lcom/file/zip/ZipEntry;

    .prologue
    const/4 v2, 0x1

    .line 1437
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    if-eqz v1, :cond_0

    .line 1438
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    iget-boolean v1, p0, Lcom/file/zip/ZipOutputStream;->hasUsedZip64:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-static {v3, v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$11(Lcom/file/zip/ZipOutputStream$CurrentEntry;Z)V

    .line 1440
    :cond_0
    iput-boolean v2, p0, Lcom/file/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 1444
    sget-object v1, Lcom/file/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lcom/file/zip/ZipShort;

    .line 1443
    invoke-virtual {p1, v1}, Lcom/file/zip/ZipEntry;->getExtraField(Lcom/file/zip/ZipShort;)Lcom/file/zip/ZipExtraField;

    move-result-object v0

    .line 1442
    check-cast v0, Lcom/file/zip/Zip64ExtendedInformationExtraField;

    .line 1445
    .local v0, "z64":Lcom/file/zip/Zip64ExtendedInformationExtraField;
    if-nez v0, :cond_1

    .line 1452
    new-instance v0, Lcom/file/zip/Zip64ExtendedInformationExtraField;

    .end local v0    # "z64":Lcom/file/zip/Zip64ExtendedInformationExtraField;
    invoke-direct {v0}, Lcom/file/zip/Zip64ExtendedInformationExtraField;-><init>()V

    .line 1456
    .restart local v0    # "z64":Lcom/file/zip/Zip64ExtendedInformationExtraField;
    :cond_1
    invoke-virtual {p1, v0}, Lcom/file/zip/ZipEntry;->addAsFirstExtraField(Lcom/file/zip/ZipExtraField;)V

    .line 1458
    return-object v0

    .end local v0    # "z64":Lcom/file/zip/Zip64ExtendedInformationExtraField;
    :cond_2
    move v1, v2

    .line 1438
    goto :goto_0
.end method

.method private handleSizesAndCrc(JJLcom/file/zip/Zip64Mode;)Z
    .locals 7
    .param p1, "bytesWritten"    # J
    .param p3, "crc"    # J
    .param p5, "effectiveMode"    # Lcom/file/zip/Zip64Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const-wide v4, 0xffffffffL

    .line 529
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 534
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$3(Lcom/file/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/file/zip/ZipEntry;->setSize(J)V

    .line 535
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/file/zip/ZipEntry;->setCompressedSize(J)V

    .line 536
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/file/zip/ZipEntry;->setCrc(J)V

    .line 538
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    .line 561
    :cond_0
    :goto_0
    sget-object v1, Lcom/file/zip/Zip64Mode;->Always:Lcom/file/zip/Zip64Mode;

    if-eq p5, v1, :cond_4

    .line 562
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    .line 563
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    .line 561
    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    const/4 v0, 0x0

    .line 564
    .local v0, "actuallyNeedsZip64":Z
    :goto_1
    if-eqz v0, :cond_5

    sget-object v1, Lcom/file/zip/Zip64Mode;->Never:Lcom/file/zip/Zip64Mode;

    if-ne p5, v1, :cond_5

    .line 565
    new-instance v1, Lcom/file/zip/Zip64RequiredException;

    .line 566
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v2

    invoke-static {v2}, Lcom/file/zip/Zip64RequiredException;->getEntryTooBigMessage(Lcom/file/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v2

    .line 565
    invoke-direct {v1, v2}, Lcom/file/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    .end local v0    # "actuallyNeedsZip64":Z
    :cond_1
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_3

    .line 540
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/file/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-eqz v1, :cond_2

    .line 541
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad CRC checksum for entry "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 543
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/file/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 544
    const-string v3, " instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 545
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    .line 549
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad size for entry "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 551
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 552
    const-string v3, " instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 553
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_3
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/file/zip/ZipEntry;->setSize(J)V

    .line 557
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/file/zip/ZipEntry;->setCompressedSize(J)V

    .line 558
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/file/zip/ZipEntry;->setCrc(J)V

    goto/16 :goto_0

    .line 561
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 568
    .restart local v0    # "actuallyNeedsZip64":Z
    :cond_5
    return v0
.end method

.method private handleZip64Extra(Lcom/file/zip/ZipEntry;JZ)V
    .locals 8
    .param p1, "ze"    # Lcom/file/zip/ZipEntry;
    .param p2, "lfhOffset"    # J
    .param p4, "needsZip64Extra"    # Z

    .prologue
    const/4 v6, 0x0

    const-wide v4, 0xffffffffL

    .line 1181
    if-eqz p4, :cond_2

    .line 1182
    invoke-direct {p0, p1}, Lcom/file/zip/ZipOutputStream;->getZip64Extra(Lcom/file/zip/ZipEntry;)Lcom/file/zip/Zip64ExtendedInformationExtraField;

    move-result-object v0

    .line 1183
    .local v0, "z64":Lcom/file/zip/Zip64ExtendedInformationExtraField;
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1184
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    .line 1185
    :cond_0
    new-instance v1, Lcom/file/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/file/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lcom/file/zip/ZipEightByteInteger;)V

    .line 1186
    new-instance v1, Lcom/file/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/file/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->setSize(Lcom/file/zip/ZipEightByteInteger;)V

    .line 1192
    :goto_0
    cmp-long v1, p2, v4

    if-ltz v1, :cond_1

    .line 1193
    new-instance v1, Lcom/file/zip/ZipEightByteInteger;

    invoke-direct {v1, p2, p3}, Lcom/file/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->setRelativeHeaderOffset(Lcom/file/zip/ZipEightByteInteger;)V

    .line 1195
    :cond_1
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->setExtra()V

    .line 1197
    .end local v0    # "z64":Lcom/file/zip/Zip64ExtendedInformationExtraField;
    :cond_2
    return-void

    .line 1189
    .restart local v0    # "z64":Lcom/file/zip/Zip64ExtendedInformationExtraField;
    :cond_3
    invoke-virtual {v0, v6}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lcom/file/zip/ZipEightByteInteger;)V

    .line 1190
    invoke-virtual {v0, v6}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->setSize(Lcom/file/zip/ZipEightByteInteger;)V

    goto :goto_0
.end method

.method private hasZip64Extra(Lcom/file/zip/ZipEntry;)Z
    .locals 1
    .param p1, "ze"    # Lcom/file/zip/ZipEntry;

    .prologue
    .line 1466
    .line 1467
    sget-object v0, Lcom/file/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lcom/file/zip/ZipShort;

    .line 1466
    invoke-virtual {p1, v0}, Lcom/file/zip/ZipEntry;->getExtraField(Lcom/file/zip/ZipShort;)Lcom/file/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rewriteSizesAndCrc(Z)V
    .locals 10
    .param p1, "actuallyNeedsZip64"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x4

    .line 578
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 580
    .local v0, "save":J
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$4(Lcom/file/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 581
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 582
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/file/zip/ZipOutputStream;->hasZip64Extra(Lcom/file/zip/ZipEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    .line 583
    :cond_0
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 584
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 590
    :goto_0
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/file/zip/ZipOutputStream;->hasZip64Extra(Lcom/file/zip/ZipEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$4(Lcom/file/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    add-long/2addr v4, v8

    .line 593
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/file/zip/ZipOutputStream;->getName(Ljava/util/zip/ZipEntry;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    add-long/2addr v4, v8

    .line 592
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 596
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/file/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 597
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/file/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 599
    if-nez p1, :cond_1

    .line 602
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$4(Lcom/file/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 603
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 607
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v2

    .line 608
    sget-object v3, Lcom/file/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lcom/file/zip/ZipShort;

    .line 607
    invoke-virtual {v2, v3}, Lcom/file/zip/ZipEntry;->removeExtraField(Lcom/file/zip/ZipShort;)V

    .line 609
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/file/zip/ZipEntry;->setExtra()V

    .line 613
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v2}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$5(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 614
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/file/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 618
    :cond_1
    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 619
    return-void

    .line 586
    :cond_2
    sget-object v2, Lcom/file/zip/ZipLong;->ZIP64_MAGIC:Lcom/file/zip/ZipLong;

    invoke-virtual {v2}, Lcom/file/zip/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 587
    sget-object v2, Lcom/file/zip/ZipLong;->ZIP64_MAGIC:Lcom/file/zip/ZipLong;

    invoke-virtual {v2}, Lcom/file/zip/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    goto/16 :goto_0
.end method

.method private setDefaults(Ljava/util/zip/ZipEntry;)V
    .locals 4
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 673
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 674
    iget v0, p0, Lcom/file/zip/ZipOutputStream;->method:I

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 677
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 680
    :cond_1
    return-void
.end method

.method private shouldAddZip64Extra(Ljava/util/zip/ZipEntry;Lcom/file/zip/Zip64Mode;)Z
    .locals 4
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .param p2, "mode"    # Lcom/file/zip/Zip64Mode;

    .prologue
    const-wide v2, 0xffffffffL

    .line 727
    sget-object v0, Lcom/file/zip/Zip64Mode;->Always:Lcom/file/zip/Zip64Mode;

    if-eq p2, v0, :cond_1

    .line 728
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 729
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 730
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/file/zip/Zip64Mode;->Never:Lcom/file/zip/Zip64Mode;

    if-ne p2, v0, :cond_1

    .line 727
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static toDosTime(Ljava/util/Date;)Lcom/file/zip/ZipLong;
    .locals 1
    .param p0, "time"    # Ljava/util/Date;

    .prologue
    .line 1249
    invoke-static {p0}, Lcom/file/zip/ZipUtil;->toDosTime(Ljava/util/Date;)Lcom/file/zip/ZipLong;

    move-result-object v0

    return-object v0
.end method

.method protected static toDosTime(J)[B
    .locals 2
    .param p0, "t"    # J

    .prologue
    .line 1262
    invoke-static {p0, p1}, Lcom/file/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v0

    return-object v0
.end method

.method private validateSizeInformation(Lcom/file/zip/Zip64Mode;)V
    .locals 6
    .param p1, "effectiveMode"    # Lcom/file/zip/Zip64Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const-wide v4, 0xffffffffL

    const-wide/16 v2, -0x1

    .line 691
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_2

    .line 692
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "uncompressed size is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/file/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 698
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "crc checksum is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/file/zip/ZipEntry;->setCompressedSize(J)V

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 705
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    .line 706
    :cond_3
    sget-object v0, Lcom/file/zip/Zip64Mode;->Never:Lcom/file/zip/Zip64Mode;

    if-ne p1, v0, :cond_4

    .line 707
    new-instance v0, Lcom/file/zip/Zip64RequiredException;

    .line 708
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-static {v1}, Lcom/file/zip/Zip64RequiredException;->getEntryTooBigMessage(Lcom/file/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-direct {v0, v1}, Lcom/file/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_4
    return-void
.end method

.method private writeDeflated([BII)V
    .locals 9
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2000

    .line 807
    if-lez p3, :cond_0

    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 808
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$3(Lcom/file/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v4

    int-to-long v6, p3

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$8(Lcom/file/zip/ZipOutputStream$CurrentEntry;J)V

    .line 809
    if-gt p3, v8, :cond_1

    .line 810
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 811
    invoke-direct {p0}, Lcom/file/zip/ZipOutputStream;->deflateUntilInputIsNeeded()V

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    div-int/lit16 v1, p3, 0x2000

    .line 814
    .local v1, "fullblocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 819
    mul-int/lit16 v0, v1, 0x2000

    .line 820
    .local v0, "done":I
    if-ge v0, p3, :cond_0

    .line 821
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    add-int v4, p2, v0

    sub-int v5, p3, v0

    invoke-virtual {v3, p1, v4, v5}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 822
    invoke-direct {p0}, Lcom/file/zip/ZipOutputStream;->deflateUntilInputIsNeeded()V

    goto :goto_0

    .line 815
    .end local v0    # "done":I
    :cond_2
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    mul-int/lit16 v4, v2, 0x2000

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4, v8}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 817
    invoke-direct {p0}, Lcom/file/zip/ZipOutputStream;->deflateUntilInputIsNeeded()V

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private writeVersionNeededToExtractAndGeneralPurposeBits(IZZ)V
    .locals 4
    .param p1, "zipMethod"    # I
    .param p2, "utfFallback"    # Z
    .param p3, "zip64"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1412
    const/16 v1, 0xa

    .line 1413
    .local v1, "versionNeededToExtract":I
    new-instance v0, Lcom/file/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lcom/file/zip/GeneralPurposeBit;-><init>()V

    .line 1414
    .local v0, "b":Lcom/file/zip/GeneralPurposeBit;
    iget-boolean v2, p0, Lcom/file/zip/ZipOutputStream;->useUTF8Flag:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/file/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    .line 1415
    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_0

    .line 1418
    const/16 v1, 0x14

    .line 1419
    invoke-virtual {v0, v3}, Lcom/file/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    .line 1421
    :cond_0
    if-eqz p3, :cond_1

    .line 1422
    const/16 v1, 0x2d

    .line 1427
    :cond_1
    invoke-static {v1}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1429
    invoke-virtual {v0}, Lcom/file/zip/GeneralPurposeBit;->encode()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1430
    return-void

    :cond_2
    move v2, v3

    .line 1414
    goto :goto_0
.end method


# virtual methods
.method public canWriteEntryData(Lcom/file/zip/ZipEntry;)Z
    .locals 1
    .param p1, "ae"    # Lcom/file/zip/ZipEntry;

    .prologue
    .line 779
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
    .line 839
    iget-boolean v0, p0, Lcom/file/zip/ZipOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/file/zip/ZipOutputStream;->finish()V

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcom/file/zip/ZipOutputStream;->destroy()V

    .line 843
    return-void
.end method

.method public closeEntry()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 478
    iget-boolean v1, p0, Lcom/file/zip/ZipOutputStream;->finished:Z

    if-eqz v1, :cond_0

    .line 479
    new-instance v1, Ljava/io/IOException;

    const-string v7, "Stream has already been finished"

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    if-nez v1, :cond_1

    .line 483
    new-instance v1, Ljava/io/IOException;

    const-string v7, "No current entry to close"

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$0(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 487
    sget-object v1, Lcom/file/zip/ZipOutputStream;->EMPTY:[B

    invoke-virtual {p0, v1, v7, v7}, Lcom/file/zip/ZipOutputStream;->write([BII)V

    .line 490
    :cond_2
    invoke-direct {p0}, Lcom/file/zip/ZipOutputStream;->flushDeflater()V

    .line 492
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/file/zip/ZipOutputStream;->getEffectiveZip64Mode(Ljava/util/zip/ZipEntry;)Lcom/file/zip/Zip64Mode;

    move-result-object v6

    .line 493
    .local v6, "effectiveMode":Lcom/file/zip/Zip64Mode;
    iget-wide v8, p0, Lcom/file/zip/ZipOutputStream;->written:J

    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$2(Lcom/file/zip/ZipOutputStream$CurrentEntry;)J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 494
    .local v2, "bytesWritten":J
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 495
    .local v4, "realCrc":J
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    move-object v1, p0

    .line 498
    invoke-direct/range {v1 .. v6}, Lcom/file/zip/ZipOutputStream;->handleSizesAndCrc(JJLcom/file/zip/Zip64Mode;)Z

    move-result v0

    .line 500
    .local v0, "actuallyNeedsZip64":Z
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    .line 501
    invoke-direct {p0, v0}, Lcom/file/zip/ZipOutputStream;->rewriteSizesAndCrc(Z)V

    .line 504
    :cond_3
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeDataDescriptor(Lcom/file/zip/ZipEntry;)V

    .line 505
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    .line 506
    return-void
.end method

.method protected final deflate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 901
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lcom/file/zip/ZipOutputStream;->buf:[B

    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 902
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 903
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->buf:[B

    invoke-virtual {p0, v1, v4, v0}, Lcom/file/zip/ZipOutputStream;->writeOut([BII)V

    .line 904
    iget-wide v2, p0, Lcom/file/zip/ZipOutputStream;->written:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 906
    :cond_0
    return-void
.end method

.method destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1507
    :cond_0
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1510
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    iget-boolean v1, p0, Lcom/file/zip/ZipOutputStream;->finished:Z

    if-eqz v1, :cond_0

    .line 448
    new-instance v1, Ljava/io/IOException;

    const-string v2, "This archive has already been finished"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/file/zip/ZipOutputStream;->closeEntry()V

    .line 455
    :cond_1
    iget-wide v2, p0, Lcom/file/zip/ZipOutputStream;->written:J

    iput-wide v2, p0, Lcom/file/zip/ZipOutputStream;->cdOffset:J

    .line 456
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 459
    iget-wide v2, p0, Lcom/file/zip/ZipOutputStream;->written:J

    iget-wide v4, p0, Lcom/file/zip/ZipOutputStream;->cdOffset:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/file/zip/ZipOutputStream;->cdLength:J

    .line 460
    invoke-virtual {p0}, Lcom/file/zip/ZipOutputStream;->writeZip64CentralDirectory()V

    .line 461
    invoke-virtual {p0}, Lcom/file/zip/ZipOutputStream;->writeCentralDirectoryEnd()V

    .line 462
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 463
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 464
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 465
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/file/zip/ZipOutputStream;->finished:Z

    .line 466
    return-void

    .line 456
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/file/zip/ZipEntry;

    .line 457
    .local v0, "ze":Lcom/file/zip/ZipEntry;
    invoke-virtual {p0, v0}, Lcom/file/zip/ZipOutputStream;->writeCentralFileHeader(Lcom/file/zip/ZipEntry;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 853
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 856
    :cond_0
    return-void
.end method

.method protected getBytes(Ljava/lang/String;)[B
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 1277
    :try_start_0
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    invoke-static {v3}, Lcom/file/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lcom/file/zip/ZipEncoding;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/file/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1278
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v2, v3, [B

    .line 1279
    .local v2, "result":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    const/4 v5, 0x0

    .line 1280
    array-length v6, v2

    .line 1279
    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    return-object v2

    .line 1282
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 1283
    .local v1, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to encode name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putNextEntry(Lcom/file/zip/ZipEntry;)V
    .locals 8
    .param p1, "archiveEntry"    # Lcom/file/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    iget-boolean v3, p0, Lcom/file/zip/ZipOutputStream;->finished:Z

    if-eqz v3, :cond_0

    .line 629
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Stream has already been finished"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 632
    :cond_0
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    if-eqz v3, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/file/zip/ZipOutputStream;->closeEntry()V

    .line 636
    :cond_1
    new-instance v3, Lcom/file/zip/ZipOutputStream$CurrentEntry;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/file/zip/ZipOutputStream$CurrentEntry;-><init>(Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipOutputStream$CurrentEntry;)V

    iput-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    .line 637
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entries:Ljava/util/List;

    iget-object v4, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v4}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/file/zip/ZipOutputStream;->setDefaults(Ljava/util/zip/ZipEntry;)V

    .line 641
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/file/zip/ZipOutputStream;->getEffectiveZip64Mode(Ljava/util/zip/ZipEntry;)Lcom/file/zip/Zip64Mode;

    move-result-object v0

    .line 642
    .local v0, "effectiveMode":Lcom/file/zip/Zip64Mode;
    invoke-direct {p0, v0}, Lcom/file/zip/ZipOutputStream;->validateSizeInformation(Lcom/file/zip/Zip64Mode;)V

    .line 644
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/file/zip/ZipOutputStream;->shouldAddZip64Extra(Ljava/util/zip/ZipEntry;Lcom/file/zip/Zip64Mode;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 646
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/file/zip/ZipOutputStream;->getZip64Extra(Lcom/file/zip/ZipEntry;)Lcom/file/zip/Zip64ExtendedInformationExtraField;

    move-result-object v2

    .line 650
    .local v2, "z64":Lcom/file/zip/Zip64ExtendedInformationExtraField;
    sget-object v1, Lcom/file/zip/ZipEightByteInteger;->ZERO:Lcom/file/zip/ZipEightByteInteger;

    .line 651
    .local v1, "size":Lcom/file/zip/ZipEightByteInteger;
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v3

    if-nez v3, :cond_2

    .line 652
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 654
    new-instance v1, Lcom/file/zip/ZipEightByteInteger;

    .end local v1    # "size":Lcom/file/zip/ZipEightByteInteger;
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/file/zip/ZipEightByteInteger;-><init>(J)V

    .line 656
    .restart local v1    # "size":Lcom/file/zip/ZipEightByteInteger;
    :cond_2
    invoke-virtual {v2, v1}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->setSize(Lcom/file/zip/ZipEightByteInteger;)V

    .line 657
    invoke-virtual {v2, v1}, Lcom/file/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lcom/file/zip/ZipEightByteInteger;)V

    .line 658
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/file/zip/ZipEntry;->setExtra()V

    .line 661
    .end local v1    # "size":Lcom/file/zip/ZipEightByteInteger;
    .end local v2    # "z64":Lcom/file/zip/Zip64ExtendedInformationExtraField;
    :cond_3
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/file/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    if-eqz v3, :cond_4

    .line 662
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    iget v4, p0, Lcom/file/zip/ZipOutputStream;->level:I

    invoke-virtual {v3, v4}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 663
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/file/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 665
    :cond_4
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v3}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/file/zip/ZipOutputStream;->writeLocalFileHeader(Lcom/file/zip/ZipEntry;)V

    .line 666
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/file/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 740
    return-void
.end method

.method public setCreateUnicodeExtraFields(Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;)V
    .locals 0
    .param p1, "b"    # Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/file/zip/ZipOutputStream;->createUnicodeExtraFields:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    .line 380
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/file/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 346
    invoke-static {p1}, Lcom/file/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lcom/file/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lcom/file/zip/ZipOutputStream;->zipEncoding:Lcom/file/zip/ZipEncoding;

    .line 347
    iget-boolean v0, p0, Lcom/file/zip/ZipOutputStream;->useUTF8Flag:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/file/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/file/zip/ZipOutputStream;->useUTF8Flag:Z

    .line 350
    :cond_0
    return-void
.end method

.method public setFallbackToUTF8(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/file/zip/ZipOutputStream;->fallbackToUTF8:Z

    .line 390
    return-void
.end method

.method public setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 752
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    .line 753
    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 754
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid compression level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 754
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_1
    iget v0, p0, Lcom/file/zip/ZipOutputStream;->level:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/file/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 758
    iput p1, p0, Lcom/file/zip/ZipOutputStream;->level:I

    .line 759
    return-void

    .line 757
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMethod(I)V
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 769
    iput p1, p0, Lcom/file/zip/ZipOutputStream;->method:I

    .line 770
    return-void
.end method

.method public setUseLanguageEncodingFlag(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 370
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    invoke-static {v0}, Lcom/file/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/file/zip/ZipOutputStream;->useUTF8Flag:Z

    .line 371
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseZip64(Lcom/file/zip/Zip64Mode;)V
    .locals 0
    .param p1, "mode"    # Lcom/file/zip/Zip64Mode;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/file/zip/ZipOutputStream;->zip64Mode:Lcom/file/zip/Zip64Mode;

    .line 438
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v0

    invoke-static {v0}, Lcom/file/zip/ZipUtil;->checkRequestedFeatures(Lcom/file/zip/ZipEntry;)V

    .line 792
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$7(Lcom/file/zip/ZipOutputStream$CurrentEntry;Z)V

    .line 793
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v0}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 794
    invoke-direct {p0, p1, p2, p3}, Lcom/file/zip/ZipOutputStream;->writeDeflated([BII)V

    .line 799
    :goto_0
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 800
    return-void

    .line 796
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/file/zip/ZipOutputStream;->writeOut([BII)V

    .line 797
    iget-wide v0, p0, Lcom/file/zip/ZipOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/file/zip/ZipOutputStream;->written:J

    goto :goto_0
.end method

.method protected writeCentralDirectoryEnd()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0xffff

    const-wide v6, 0xffffffffL

    .line 1207
    sget-object v3, Lcom/file/zip/ZipOutputStream;->EOCD_SIG:[B

    invoke-virtual {p0, v3}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1210
    sget-object v3, Lcom/file/zip/ZipOutputStream;->ZERO:[B

    invoke-virtual {p0, v3}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1211
    sget-object v3, Lcom/file/zip/ZipOutputStream;->ZERO:[B

    invoke-virtual {p0, v3}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1214
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1215
    .local v2, "numberOfEntries":I
    if-le v2, v8, :cond_0

    .line 1216
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->zip64Mode:Lcom/file/zip/Zip64Mode;

    sget-object v4, Lcom/file/zip/Zip64Mode;->Never:Lcom/file/zip/Zip64Mode;

    if-ne v3, v4, :cond_0

    .line 1217
    new-instance v3, Lcom/file/zip/Zip64RequiredException;

    const-string v4, "archive contains more than 65535 entries."

    invoke-direct {v3, v4}, Lcom/file/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1220
    :cond_0
    iget-wide v4, p0, Lcom/file/zip/ZipOutputStream;->cdOffset:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->zip64Mode:Lcom/file/zip/Zip64Mode;

    sget-object v4, Lcom/file/zip/Zip64Mode;->Never:Lcom/file/zip/Zip64Mode;

    if-ne v3, v4, :cond_1

    .line 1221
    new-instance v3, Lcom/file/zip/Zip64RequiredException;

    const-string v4, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {v3, v4}, Lcom/file/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1225
    :cond_1
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v1

    .line 1227
    .local v1, "num":[B
    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1228
    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1231
    iget-wide v4, p0, Lcom/file/zip/ZipOutputStream;->cdLength:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1232
    iget-wide v4, p0, Lcom/file/zip/ZipOutputStream;->cdOffset:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1235
    iget-object v3, p0, Lcom/file/zip/ZipOutputStream;->zipEncoding:Lcom/file/zip/ZipEncoding;

    iget-object v4, p0, Lcom/file/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/file/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1236
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v3}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1237
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    .line 1238
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1237
    invoke-virtual {p0, v3, v4, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([BII)V

    .line 1239
    return-void
.end method

.method protected writeCentralFileHeader(Lcom/file/zip/ZipEntry;)V
    .locals 14
    .param p1, "ze"    # Lcom/file/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1065
    sget-object v9, Lcom/file/zip/ZipOutputStream;->CFH_SIG:[B

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1066
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1068
    iget-object v9, p0, Lcom/file/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1069
    .local v4, "lfhOffset":J
    invoke-direct {p0, p1}, Lcom/file/zip/ZipOutputStream;->hasZip64Extra(Lcom/file/zip/ZipEntry;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1070
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 1071
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 1072
    const-wide v10, 0xffffffffL

    .line 1069
    cmp-long v9, v4, v10

    if-gez v9, :cond_0

    const/4 v7, 0x0

    .line 1074
    .local v7, "needsZip64Extra":Z
    :goto_0
    if-eqz v7, :cond_1

    iget-object v9, p0, Lcom/file/zip/ZipOutputStream;->zip64Mode:Lcom/file/zip/Zip64Mode;

    sget-object v10, Lcom/file/zip/Zip64Mode;->Never:Lcom/file/zip/Zip64Mode;

    if-ne v9, v10, :cond_1

    .line 1078
    new-instance v9, Lcom/file/zip/Zip64RequiredException;

    const-string v10, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {v9, v10}, Lcom/file/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1069
    .end local v7    # "needsZip64Extra":Z
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 1082
    .restart local v7    # "needsZip64Extra":Z
    :cond_1
    invoke-direct {p0, p1, v4, v5, v7}, Lcom/file/zip/ZipOutputStream;->handleZip64Extra(Lcom/file/zip/ZipEntry;JZ)V

    .line 1086
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getPlatform()I

    move-result v9

    shl-int/lit8 v10, v9, 0x8

    .line 1087
    iget-boolean v9, p0, Lcom/file/zip/ZipOutputStream;->hasUsedZip64:Z

    if-nez v9, :cond_4

    const/16 v9, 0x14

    .line 1088
    :goto_1
    or-int/2addr v9, v10

    .line 1086
    invoke-static {v9}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1089
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1091
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v8

    .line 1092
    .local v8, "zipMethod":I
    iget-object v9, p0, Lcom/file/zip/ZipOutputStream;->zipEncoding:Lcom/file/zip/ZipEncoding;

    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/file/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v2

    .line 1094
    .local v2, "encodable":Z
    if-nez v2, :cond_5

    .line 1095
    iget-boolean v9, p0, Lcom/file/zip/ZipOutputStream;->fallbackToUTF8:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    .line 1093
    :goto_2
    invoke-direct {p0, v8, v9, v7}, Lcom/file/zip/ZipOutputStream;->writeVersionNeededToExtractAndGeneralPurposeBits(IZZ)V

    .line 1097
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1100
    invoke-static {v8}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1101
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1104
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/file/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1105
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1110
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCrc()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1111
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    .line 1112
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    cmp-long v9, v10, v12

    if-ltz v9, :cond_6

    .line 1113
    :cond_2
    sget-object v9, Lcom/file/zip/ZipLong;->ZIP64_MAGIC:Lcom/file/zip/ZipLong;

    invoke-virtual {v9}, Lcom/file/zip/ZipLong;->getBytes()[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1114
    sget-object v9, Lcom/file/zip/ZipLong;->ZIP64_MAGIC:Lcom/file/zip/ZipLong;

    invoke-virtual {v9}, Lcom/file/zip/ZipLong;->getBytes()[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1120
    :goto_3
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0xc

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1123
    invoke-direct {p0, p1}, Lcom/file/zip/ZipOutputStream;->getName(Ljava/util/zip/ZipEntry;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1125
    .local v6, "name":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-static {v9}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1126
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1129
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCentralDirectoryExtra()[B

    move-result-object v3

    .line 1130
    .local v3, "extra":[B
    array-length v9, v3

    invoke-static {v9}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1131
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1134
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, "comm":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 1136
    const-string v0, ""

    .line 1139
    :cond_3
    invoke-direct {p0, p1}, Lcom/file/zip/ZipOutputStream;->getEntryEncoding(Ljava/util/zip/ZipEntry;)Lcom/file/zip/ZipEncoding;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/file/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1141
    .local v1, "commentB":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-static {v9}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1142
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1145
    sget-object v9, Lcom/file/zip/ZipOutputStream;->ZERO:[B

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1146
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1149
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getInternalAttributes()I

    move-result v9

    invoke-static {v9}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1150
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x2

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1153
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1154
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1157
    const-wide v10, 0xffffffffL

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1158
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1161
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    .line 1162
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    sub-int/2addr v11, v12

    .line 1161
    invoke-virtual {p0, v9, v10, v11}, Lcom/file/zip/ZipOutputStream;->writeOut([BII)V

    .line 1163
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    int-to-long v12, v9

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1166
    invoke-virtual {p0, v3}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1167
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    array-length v9, v3

    int-to-long v12, v9

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1170
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    .line 1171
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    sub-int/2addr v11, v12

    .line 1170
    invoke-virtual {p0, v9, v10, v11}, Lcom/file/zip/ZipOutputStream;->writeOut([BII)V

    .line 1172
    iget-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    int-to-long v12, v9

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1173
    return-void

    .line 1088
    .end local v0    # "comm":Ljava/lang/String;
    .end local v1    # "commentB":Ljava/nio/ByteBuffer;
    .end local v2    # "encodable":Z
    .end local v3    # "extra":[B
    .end local v6    # "name":Ljava/nio/ByteBuffer;
    .end local v8    # "zipMethod":I
    :cond_4
    const/16 v9, 0x2d

    goto/16 :goto_1

    .line 1095
    .restart local v2    # "encodable":Z
    .restart local v8    # "zipMethod":I
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1116
    :cond_6
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1117
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    goto/16 :goto_3
.end method

.method protected writeDataDescriptor(Lcom/file/zip/ZipEntry;)V
    .locals 6
    .param p1, "ze"    # Lcom/file/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1039
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    sget-object v1, Lcom/file/zip/ZipOutputStream;->DD_SIG:[B

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1043
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1044
    const/4 v0, 0x4

    .line 1045
    .local v0, "sizeFieldSize":I
    invoke-direct {p0, p1}, Lcom/file/zip/ZipOutputStream;->hasZip64Extra(Lcom/file/zip/ZipEntry;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1046
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1047
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1053
    :goto_1
    iget-wide v2, p0, Lcom/file/zip/ZipOutputStream;->written:J

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/file/zip/ZipOutputStream;->written:J

    goto :goto_0

    .line 1049
    :cond_2
    const/16 v0, 0x8

    .line 1050
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/file/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1051
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/file/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    goto :goto_1
.end method

.method protected writeLocalFileHeader(Lcom/file/zip/ZipEntry;)V
    .locals 12
    .param p1, "ze"    # Lcom/file/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x4

    const-wide/16 v10, 0x2

    .line 917
    iget-object v5, p0, Lcom/file/zip/ZipOutputStream;->zipEncoding:Lcom/file/zip/ZipEncoding;

    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/file/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v0

    .line 918
    .local v0, "encodable":Z
    invoke-direct {p0, p1}, Lcom/file/zip/ZipOutputStream;->getName(Ljava/util/zip/ZipEntry;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 920
    .local v2, "name":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lcom/file/zip/ZipOutputStream;->createUnicodeExtraFields:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    sget-object v6, Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lcom/file/zip/ZipOutputStream$UnicodeExtraFieldPolicy;

    if-eq v5, v6, :cond_0

    .line 921
    invoke-direct {p0, p1, v0, v2}, Lcom/file/zip/ZipOutputStream;->addUnicodeExtraFields(Lcom/file/zip/ZipEntry;ZLjava/nio/ByteBuffer;)V

    .line 924
    :cond_0
    iget-object v5, p0, Lcom/file/zip/ZipOutputStream;->offsets:Ljava/util/Map;

    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v5, Lcom/file/zip/ZipOutputStream;->LFH_SIG:[B

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 927
    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 930
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getMethod()I

    move-result v4

    .line 933
    .local v4, "zipMethod":I
    if-nez v0, :cond_2

    .line 934
    iget-boolean v5, p0, Lcom/file/zip/ZipOutputStream;->fallbackToUTF8:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    .line 935
    :goto_0
    invoke-direct {p0, p1}, Lcom/file/zip/ZipOutputStream;->hasZip64Extra(Lcom/file/zip/ZipEntry;)Z

    move-result v6

    .line 932
    invoke-direct {p0, v4, v5, v6}, Lcom/file/zip/ZipOutputStream;->writeVersionNeededToExtractAndGeneralPurposeBits(IZZ)V

    .line 936
    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 939
    invoke-static {v4}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 940
    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 943
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/file/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 944
    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 949
    iget-object v5, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    invoke-static {v5, v6, v7}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$9(Lcom/file/zip/ZipOutputStream$CurrentEntry;J)V

    .line 950
    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v5, :cond_4

    .line 951
    :cond_1
    sget-object v5, Lcom/file/zip/ZipOutputStream;->LZERO:[B

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 952
    iget-object v5, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    invoke-static {v5}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$1(Lcom/file/zip/ZipOutputStream$CurrentEntry;)Lcom/file/zip/ZipEntry;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/file/zip/ZipOutputStream;->hasZip64Extra(Lcom/file/zip/ZipEntry;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 956
    sget-object v5, Lcom/file/zip/ZipLong;->ZIP64_MAGIC:Lcom/file/zip/ZipLong;

    invoke-virtual {v5}, Lcom/file/zip/ZipLong;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 957
    sget-object v5, Lcom/file/zip/ZipLong;->ZIP64_MAGIC:Lcom/file/zip/ZipLong;

    invoke-virtual {v5}, Lcom/file/zip/ZipLong;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 972
    :goto_1
    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    const-wide/16 v8, 0xc

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 976
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v5}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 977
    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 980
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getLocalFileDataExtra()[B

    move-result-object v1

    .line 981
    .local v1, "extra":[B
    array-length v5, v1

    invoke-static {v5}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 982
    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 985
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    .line 986
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int/2addr v7, v8

    .line 985
    invoke-virtual {p0, v5, v6, v7}, Lcom/file/zip/ZipOutputStream;->writeOut([BII)V

    .line 987
    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 990
    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 991
    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    array-length v5, v1

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 993
    iget-object v5, p0, Lcom/file/zip/ZipOutputStream;->entry:Lcom/file/zip/ZipOutputStream$CurrentEntry;

    iget-wide v6, p0, Lcom/file/zip/ZipOutputStream;->written:J

    invoke-static {v5, v6, v7}, Lcom/file/zip/ZipOutputStream$CurrentEntry;->access$10(Lcom/file/zip/ZipOutputStream$CurrentEntry;J)V

    .line 994
    return-void

    .line 934
    .end local v1    # "extra":[B
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 959
    :cond_3
    sget-object v5, Lcom/file/zip/ZipOutputStream;->LZERO:[B

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 960
    sget-object v5, Lcom/file/zip/ZipOutputStream;->LZERO:[B

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    goto :goto_1

    .line 963
    :cond_4
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getCrc()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 964
    sget-object v5, Lcom/file/zip/ZipLong;->ZIP64_MAGIC:Lcom/file/zip/ZipLong;

    invoke-virtual {v5}, Lcom/file/zip/ZipLong;->getBytes()[B

    move-result-object v3

    .line 965
    .local v3, "size":[B
    invoke-direct {p0, p1}, Lcom/file/zip/ZipOutputStream;->hasZip64Extra(Lcom/file/zip/ZipEntry;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 966
    invoke-virtual {p1}, Lcom/file/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/file/zip/ZipLong;->getBytes(J)[B

    move-result-object v3

    .line 968
    :cond_5
    invoke-virtual {p0, v3}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 969
    invoke-virtual {p0, v3}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    goto/16 :goto_1
.end method

.method protected final writeOut([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1364
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([BII)V

    .line 1365
    return-void
.end method

.method protected final writeOut([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1383
    :goto_0
    return-void

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/file/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method protected writeZip64CentralDirectory()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v8, 0xffffffffL

    const/16 v6, 0x2d

    .line 1295
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->zip64Mode:Lcom/file/zip/Zip64Mode;

    sget-object v4, Lcom/file/zip/Zip64Mode;->Never:Lcom/file/zip/Zip64Mode;

    if-ne v1, v4, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    iget-boolean v1, p0, Lcom/file/zip/ZipOutputStream;->hasUsedZip64:Z

    if-nez v1, :cond_3

    .line 1300
    iget-wide v4, p0, Lcom/file/zip/ZipOutputStream;->cdOffset:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    iget-wide v4, p0, Lcom/file/zip/ZipOutputStream;->cdLength:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    .line 1301
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const v4, 0xffff

    if-lt v1, v4, :cond_3

    .line 1303
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/file/zip/ZipOutputStream;->hasUsedZip64:Z

    .line 1306
    :cond_3
    iget-boolean v1, p0, Lcom/file/zip/ZipOutputStream;->hasUsedZip64:Z

    if-eqz v1, :cond_0

    .line 1310
    iget-wide v2, p0, Lcom/file/zip/ZipOutputStream;->written:J

    .line 1312
    .local v2, "offset":J
    sget-object v1, Lcom/file/zip/ZipOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1316
    const-wide/16 v4, 0x2c

    invoke-static {v4, v5}, Lcom/file/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    .line 1315
    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1327
    invoke-static {v6}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1328
    invoke-static {v6}, Lcom/file/zip/ZipShort;->getBytes(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1331
    sget-object v1, Lcom/file/zip/ZipOutputStream;->LZERO:[B

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1332
    sget-object v1, Lcom/file/zip/ZipOutputStream;->LZERO:[B

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1335
    iget-object v1, p0, Lcom/file/zip/ZipOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcom/file/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v0

    .line 1336
    .local v0, "num":[B
    invoke-virtual {p0, v0}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1337
    invoke-virtual {p0, v0}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1340
    iget-wide v4, p0, Lcom/file/zip/ZipOutputStream;->cdLength:J

    invoke-static {v4, v5}, Lcom/file/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1341
    iget-wide v4, p0, Lcom/file/zip/ZipOutputStream;->cdOffset:J

    invoke-static {v4, v5}, Lcom/file/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1346
    sget-object v1, Lcom/file/zip/ZipOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1349
    sget-object v1, Lcom/file/zip/ZipOutputStream;->LZERO:[B

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1351
    invoke-static {v2, v3}, Lcom/file/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    .line 1353
    sget-object v1, Lcom/file/zip/ZipOutputStream;->ONE:[B

    invoke-virtual {p0, v1}, Lcom/file/zip/ZipOutputStream;->writeOut([B)V

    goto/16 :goto_0
.end method
