.class public Lcom/fimi/kernel/utils/DesEncryptUtil;
.super Ljava/lang/Object;
.source "DesEncryptUtil.java"


# static fields
.field private static volatile desEncryptUtil:Lcom/fimi/kernel/utils/DesEncryptUtil;


# instance fields
.field public final ENCRYPT_KEY_BYTES:[B

.field public final ENCRYPT_KEY_BYTES_TWO:[B

.field private final HEX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/kernel/utils/DesEncryptUtil;->desEncryptUtil:Lcom/fimi/kernel/utils/DesEncryptUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/kernel/utils/DesEncryptUtil;->ENCRYPT_KEY_BYTES:[B

    .line 14
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/fimi/kernel/utils/DesEncryptUtil;->ENCRYPT_KEY_BYTES_TWO:[B

    .line 95
    const-string v0, "0123456789ABCDEF"

    iput-object v0, p0, Lcom/fimi/kernel/utils/DesEncryptUtil;->HEX:Ljava/lang/String;

    return-void

    .line 13
    :array_0
    .array-data 1
        -0x4dt
        -0x5ct
        -0xat
        -0x1et
        0x34t
        0x21t
        0x29t
        0x11t
    .end array-data

    .line 14
    :array_1
    .array-data 1
        -0x4ft
        -0x57t
        -0x3at
        0x32t
        0x34t
        -0x6ft
        0x49t
        0x57t
    .end array-data
.end method

.method private appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "b"    # B

    .prologue
    .line 98
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    return-void
.end method

.method private decrypt([BLjava/lang/String;)[B
    .locals 6
    .param p1, "src"    # [B
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 67
    .local v3, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    const-string/jumbo v5, "utf-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 68
    .local v1, "desKey":Ljavax/crypto/spec/DESKeySpec;
    const-string v5, "DES"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 70
    .local v2, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v2, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 71
    .local v4, "securekey":Ljavax/crypto/SecretKey;
    const-string v5, "DES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 72
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 73
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    return-object v5
.end method

.method private desCrypto([BLjava/lang/String;)[B
    .locals 7
    .param p1, "datasource"    # [B
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 49
    .local v4, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    const-string/jumbo v6, "utf-8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 50
    .local v1, "desKey":Ljavax/crypto/spec/DESKeySpec;
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 52
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v3, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 53
    .local v5, "securekey":Ljavax/crypto/SecretKey;
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 55
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 57
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 62
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "desKey":Ljavax/crypto/spec/DESKeySpec;
    .end local v3    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "random":Ljava/security/SecureRandom;
    .end local v5    # "securekey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v6

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getInstans()Lcom/fimi/kernel/utils/DesEncryptUtil;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/fimi/kernel/utils/DesEncryptUtil;->desEncryptUtil:Lcom/fimi/kernel/utils/DesEncryptUtil;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Lcom/fimi/kernel/utils/DesEncryptUtil;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/fimi/kernel/utils/DesEncryptUtil;->desEncryptUtil:Lcom/fimi/kernel/utils/DesEncryptUtil;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/fimi/kernel/utils/DesEncryptUtil;

    invoke-direct {v0}, Lcom/fimi/kernel/utils/DesEncryptUtil;-><init>()V

    sput-object v0, Lcom/fimi/kernel/utils/DesEncryptUtil;->desEncryptUtil:Lcom/fimi/kernel/utils/DesEncryptUtil;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/fimi/kernel/utils/DesEncryptUtil;->desEncryptUtil:Lcom/fimi/kernel/utils/DesEncryptUtil;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "str"    # [Ljava/lang/String;

    .prologue
    .line 152
    const-string v2, ""

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 154
    .local v0, "freeCapacity":D
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintStream;->print(D)V

    .line 157
    return-void
.end method

.method private toByte(Ljava/lang/String;)[B
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 78
    .local v1, "len":I
    new-array v2, v1, [B

    .line 79
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 80
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    .line 81
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 80
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-object v2
.end method

.method private toHex([B)Ljava/lang/String;
    .locals 3
    .param p1, "buf"    # [B

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string v2, ""

    .line 92
    :goto_0
    return-object v2

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 89
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 90
    aget-byte v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/fimi/kernel/utils/DesEncryptUtil;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toHexString1(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 168
    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static toHexString1([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 162
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/fimi/kernel/utils/DesEncryptUtil;->toHexString1(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public desCbcDecrypt([B[B)[B
    .locals 7
    .param p1, "content"    # [B
    .param p2, "keyBytes"    # [B

    .prologue
    .line 134
    :try_start_0
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 135
    .local v4, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 136
    .local v1, "desKey":Ljavax/crypto/spec/DESKeySpec;
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 137
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v3, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 138
    .local v5, "securekey":Ljavax/crypto/SecretKey;
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 139
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 140
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 144
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "desKey":Ljavax/crypto/spec/DESKeySpec;
    .end local v3    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "random":Ljava/security/SecureRandom;
    .end local v5    # "securekey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v6

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public desCbcEncrypt([B[B)[B
    .locals 7
    .param p1, "content"    # [B
    .param p2, "keyBytes"    # [B

    .prologue
    .line 111
    :try_start_0
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 112
    .local v4, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 113
    .local v1, "desKey":Ljavax/crypto/spec/DESKeySpec;
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 114
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v3, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 115
    .local v5, "securekey":Ljavax/crypto/SecretKey;
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 116
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 117
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 121
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "desKey":Ljavax/crypto/spec/DESKeySpec;
    .end local v3    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "random":Ljava/security/SecureRandom;
    .end local v5    # "securekey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v6

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public desCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "hex"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 28
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/fimi/kernel/utils/DesEncryptUtil;->toByte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/fimi/kernel/utils/DesEncryptUtil;->decrypt([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    .line 32
    .end local p1    # "hex":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 29
    .restart local p1    # "hex":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 36
    move-object v2, p1

    .line 38
    .local v2, "hex":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/fimi/kernel/utils/DesEncryptUtil;->desCrypto([BLjava/lang/String;)[B

    move-result-object v0

    .line 39
    .local v0, "by":[B
    invoke-direct {p0, v0}, Lcom/fimi/kernel/utils/DesEncryptUtil;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 43
    .end local v0    # "by":[B
    :goto_0
    return-object v2

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
