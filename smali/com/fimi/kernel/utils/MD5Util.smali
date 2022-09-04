.class public Lcom/fimi/kernel/utils/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field protected static hexDigits:[C

.field protected static messagedigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fimi/kernel/utils/MD5Util;->hexDigits:[C

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/kernel/utils/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    .line 16
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/utils/MD5Util;->messagedigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    goto :goto_0

    .line 12
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x10

    .line 69
    new-array v2, v11, [C

    fill-array-data v2, :array_0

    .line 73
    .local v2, "hexDigits":[C
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 74
    .local v7, "strTemp":[B
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 75
    .local v6, "mdTemp":Ljava/security/MessageDigest;
    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 78
    .local v9, "tmp":[B
    const/16 v10, 0x20

    new-array v8, v10, [C

    .line 80
    .local v8, "strs":[C
    const/4 v4, 0x0

    .line 81
    .local v4, "k":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v5, v4

    .end local v4    # "k":I
    .local v5, "k":I
    :goto_0
    if-ge v3, v11, :cond_0

    .line 83
    aget-byte v0, v9, v3

    .line 84
    .local v0, "byte0":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    ushr-int/lit8 v10, v0, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v2, v10

    aput-char v10, v8, v5

    .line 86
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "k":I
    .restart local v5    # "k":I
    and-int/lit8 v10, v0, 0xf

    aget-char v10, v2, v10

    aput-char v10, v8, v4

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "byte0":B
    :cond_0
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v3    # "i":I
    .end local v5    # "k":I
    .end local v6    # "mdTemp":Ljava/security/MessageDigest;
    .end local v7    # "strTemp":[B
    .end local v8    # "strs":[C
    .end local v9    # "tmp":[B
    :goto_1
    return-object v10

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_1

    .line 69
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .locals 4
    .param p0, "bt"    # B
    .param p1, "stringbuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 51
    sget-object v2, Lcom/fimi/kernel/utils/MD5Util;->hexDigits:[C

    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v0, v2, v3

    .line 52
    .local v0, "c0":C
    sget-object v2, Lcom/fimi/kernel/utils/MD5Util;->hexDigits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v1, v2, v3

    .line 53
    .local v1, "c1":C
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 37
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/fimi/kernel/utils/MD5Util;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "m"    # I
    .param p2, "n"    # I

    .prologue
    .line 41
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 42
    .local v2, "stringbuffer":Ljava/lang/StringBuffer;
    add-int v0, p1, p2

    .line 43
    .local v0, "k":I
    move v1, p1

    .local v1, "l":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 44
    aget-byte v3, p0, v1

    invoke-static {v3, v2}, Lcom/fimi/kernel/utils/MD5Util;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static checkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "md5PwdStr"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/fimi/kernel/utils/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static getFileMD5String(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 22
    .local v7, "in":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 23
    .local v0, "ch":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 24
    .local v6, "byteBuffer":Ljava/nio/MappedByteBuffer;
    sget-object v1, Lcom/fimi/kernel/utils/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 25
    sget-object v1, Lcom/fimi/kernel/utils/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/kernel/utils/MD5Util;->bufferToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/MD5Util;->getMD5String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5String([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 32
    sget-object v0, Lcom/fimi/kernel/utils/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 33
    sget-object v0, Lcom/fimi/kernel/utils/MD5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/MD5Util;->bufferToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "2011123456"

    invoke-static {v1}, Lcom/fimi/kernel/utils/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    return-void
.end method
