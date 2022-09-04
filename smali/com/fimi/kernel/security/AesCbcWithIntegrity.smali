.class public Lcom/fimi/kernel/security/AesCbcWithIntegrity;
.super Ljava/lang/Object;
.source "AesCbcWithIntegrity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/security/AesCbcWithIntegrity$PrngFixes;,
        Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;,
        Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    }
.end annotation


# static fields
.field private static final AES_KEY_LENGTH_BITS:I = 0x80

.field private static final ALLOW_BROKEN_PRNG:Z = false

.field public static final BASE64_FLAGS:I = 0x2

.field private static final CIPHER:Ljava/lang/String; = "AES"

.field private static final CIPHER_TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final HMAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field private static final HMAC_KEY_LENGTH_BITS:I = 0x100

.field private static final IV_LENGTH_BYTES:I = 0x10

.field private static final PBE_ALGORITHM:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final PBE_ITERATION_COUNT:I = 0x2710

.field private static final PBE_SALT_LENGTH_BITS:I = 0x80

.field static final prngFixed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->prngFixed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constantTimeEq([B[B)Z
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v2, 0x0

    .line 509
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v2

    .line 512
    :cond_1
    const/4 v1, 0x0

    .line 513
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 514
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 516
    :cond_2
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static copyOfRange([BII)[B
    .locals 3
    .param p0, "from"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 639
    sub-int v0, p2, p1

    .line 640
    .local v0, "length":I
    new-array v1, v0, [B

    .line 641
    .local v1, "result":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 642
    return-object v1
.end method

.method public static decrypt(Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;)[B
    .locals 7
    .param p0, "civ"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;
    .param p1, "secretKeys"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->getIv()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->getCipherText()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->ivCipherConcat([B[B)[B

    move-result-object v2

    .line 403
    .local v2, "ivCipherConcat":[B
    invoke-virtual {p1}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->getIntegrityKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->generateMac([BLjavax/crypto/SecretKey;)[B

    move-result-object v1

    .line 404
    .local v1, "computedMac":[B
    invoke-virtual {p0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->getMac()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->constantTimeEq([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 406
    .local v0, "aesCipherForDecryption":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->getConfidentialityKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    .line 407
    invoke-virtual {p0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->getIv()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 406
    invoke-virtual {v0, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 408
    invoke-virtual {p0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->getCipherText()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3

    .line 410
    .end local v0    # "aesCipherForDecryption":Ljavax/crypto/Cipher;
    :cond_0
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "MAC stored in civ does not match computed MAC."

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static decryptString(Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;)Ljava/lang/String;
    .locals 1
    .param p0, "civ"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;
    .param p1, "secretKeys"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 388
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->decryptString(Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decryptString(Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "civ"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;
    .param p1, "secretKeys"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->decrypt(Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;)Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;
    .locals 1
    .param p0, "plaintext"    # Ljava/lang/String;
    .param p1, "secretKeys"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 295
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->encrypt(Ljava/lang/String;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;)Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;)Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;
    .locals 1
    .param p0, "plaintext"    # Ljava/lang/String;
    .param p1, "secretKeys"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->encrypt([BLcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;)Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([BLcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;)Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;
    .locals 8
    .param p0, "plaintext"    # [B
    .param p1, "secretKeys"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->generateIv()[B

    move-result-object v3

    .line 325
    .local v3, "iv":[B
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 326
    .local v0, "aesCipherForEncryption":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->getConfidentialityKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 332
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    .line 333
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 334
    .local v1, "byteCipherText":[B
    invoke-static {v3, v1}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->ivCipherConcat([B[B)[B

    move-result-object v4

    .line 336
    .local v4, "ivCipherConcat":[B
    invoke-virtual {p1}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->getIntegrityKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->generateMac([BLjavax/crypto/SecretKey;)[B

    move-result-object v2

    .line 337
    .local v2, "integrityMac":[B
    new-instance v5, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;

    invoke-direct {v5, v1, v3, v2}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;-><init>([B[B[B)V

    return-object v5
.end method

.method private static fixPrng()V
    .locals 3

    .prologue
    .line 345
    sget-object v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->prngFixed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    const-class v1, Lcom/fimi/kernel/security/AesCbcWithIntegrity$PrngFixes;

    monitor-enter v1

    .line 347
    :try_start_0
    sget-object v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->prngFixed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-static {}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$PrngFixes;->apply()V

    .line 349
    sget-object v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->prngFixed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 351
    :cond_0
    monitor-exit v1

    .line 353
    :cond_1
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static generateIv()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 265
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->randomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateKey()Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->fixPrng()V

    .line 139
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 142
    .local v3, "keyGen":Ljavax/crypto/KeyGenerator;
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 143
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 146
    .local v0, "confidentialityKey":Ljavax/crypto/SecretKey;
    const/16 v4, 0x20

    invoke-static {v4}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->randomBytes(I)[B

    move-result-object v2

    .line 147
    .local v2, "integrityKeyBytes":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "HmacSHA256"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 149
    .local v1, "integrityKey":Ljavax/crypto/SecretKey;
    new-instance v4, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    invoke-direct {v4, v0, v1}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v4
.end method

.method public static generateKeyFromPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .locals 1
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "salt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 221
    const/16 v0, 0x2710

    invoke-static {p0, p1, v0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;Ljava/lang/String;I)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    move-result-object v0

    return-object v0
.end method

.method public static generateKeyFromPassword(Ljava/lang/String;Ljava/lang/String;I)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .locals 1
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "salt"    # Ljava/lang/String;
    .param p2, "iterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;[BI)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    move-result-object v0

    return-object v0
.end method

.method public static generateKeyFromPassword(Ljava/lang/String;[B)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .locals 1
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 168
    const/16 v0, 0x2710

    invoke-static {p0, p1, v0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;[BI)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    move-result-object v0

    return-object v0
.end method

.method public static generateKeyFromPassword(Ljava/lang/String;[BI)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .locals 10
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    .line 185
    invoke-static {}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->fixPrng()V

    .line 187
    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/16 v8, 0x180

    invoke-direct {v6, v7, p1, p2, v8}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 189
    .local v6, "keySpec":Ljava/security/spec/KeySpec;
    const-string v7, "PBKDF2WithHmacSHA1"

    .line 190
    invoke-static {v7}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 191
    .local v5, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v5, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    .line 194
    .local v4, "keyBytes":[B
    const/4 v7, 0x0

    invoke-static {v4, v7, v9}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->copyOfRange([BII)[B

    move-result-object v1

    .line 195
    .local v1, "confidentialityKeyBytes":[B
    const/16 v7, 0x30

    invoke-static {v4, v9, v7}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->copyOfRange([BII)[B

    move-result-object v3

    .line 199
    .local v3, "integrityKeyBytes":[B
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v0, v1, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 202
    .local v0, "confidentialityKey":Ljavax/crypto/SecretKey;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "HmacSHA256"

    invoke-direct {v2, v3, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 204
    .local v2, "integrityKey":Ljavax/crypto/SecretKey;
    new-instance v7, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    invoke-direct {v7, v0, v2}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v7
.end method

.method public static generateMac([BLjavax/crypto/SecretKey;)[B
    .locals 2
    .param p0, "byteCipherText"    # [B
    .param p1, "integrityKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 428
    const-string v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 429
    .local v0, "sha256_HMAC":Ljavax/crypto/Mac;
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 430
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static generateSalt()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 243
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->randomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static keyString(Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;)Ljava/lang/String;
    .locals 1
    .param p0, "keys"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static keys(Ljava/lang/String;)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .locals 8
    .param p0, "keysStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    .line 107
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "keysArr":[Ljava/lang/String;
    array-length v3, v2

    if-eq v3, v5, :cond_0

    .line 110
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot parse aesKey:hmacKey"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    :cond_0
    aget-object v3, v2, v7

    invoke-static {v3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 114
    .local v0, "confidentialityKey":[B
    array-length v3, v0

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 115
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Base64 decoded key is not 128 bytes"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_1
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 118
    .local v1, "integrityKey":[B
    array-length v3, v1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    .line 119
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Base64 decoded key is not 256 bytes"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_2
    new-instance v3, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    array-length v5, v0

    const-string v6, "AES"

    invoke-direct {v4, v0, v7, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "HmacSHA256"

    invoke-direct {v5, v1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v3
.end method

.method private static randomBytes(I)[B
    .locals 2
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->fixPrng()V

    .line 270
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 271
    .local v1, "random":Ljava/security/SecureRandom;
    new-array v0, p0, [B

    .line 272
    .local v0, "b":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 273
    return-object v0
.end method

.method public static saltString([B)Ljava/lang/String;
    .locals 1
    .param p0, "salt"    # [B

    .prologue
    .line 254
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
