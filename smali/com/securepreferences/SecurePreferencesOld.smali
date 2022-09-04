.class public Lcom/securepreferences/SecurePreferencesOld;
.super Ljava/lang/Object;
.source "SecurePreferencesOld.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/securepreferences/SecurePreferencesOld$Editor;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AES_KEY_ALG:Ljava/lang/String; = "AES"

.field private static final BACKUP_PBE_KEY_ALG:Ljava/lang/String; = "PBEWithMD5AndDES"

.field private static final ITERATIONS:I = 0x7d0

.field private static final KEY_SIZE:I = 0x100

.field private static final PRIMARY_PBE_KEY_ALG:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final PROVIDER:Ljava/lang/String; = "BC"

.field private static final TAG:Ljava/lang/String;

.field private static sFile:Landroid/content/SharedPreferences;

.field private static sKey:[B

.field private static sLoggingEnabled:Z

.field private static sOnSharedPreferenceChangeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/securepreferences/SecurePreferencesOld;->sLoggingEnabled:Z

    .line 91
    const-class v0, Lcom/securepreferences/SecurePreferencesOld;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/securepreferences/SecurePreferencesOld;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v3, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    if-nez v3, :cond_0

    .line 102
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    .line 107
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->generateAesKeyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 110
    invoke-static {}, Lcom/securepreferences/SecurePreferencesOld;->generateAesKeyValue()Ljava/lang/String;

    move-result-object v2

    .line 111
    sget-object v3, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    :cond_1
    invoke-static {v2}, Lcom/securepreferences/SecurePreferencesOld;->decode(Ljava/lang/String;)[B

    move-result-object v3

    sput-object v3, Lcom/securepreferences/SecurePreferencesOld;->sKey:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/securepreferences/SecurePreferencesOld;->sOnSharedPreferenceChangeListeners:Ljava/util/HashMap;

    .line 125
    return-void

    .line 116
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/securepreferences/SecurePreferencesOld;->sLoggingEnabled:Z

    if-eqz v3, :cond_2

    .line 118
    sget-object v3, Lcom/securepreferences/SecurePreferencesOld;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error init:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static synthetic access$100()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/securepreferences/SecurePreferencesOld;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/securepreferences/SecurePreferencesOld;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/securepreferences/SecurePreferencesOld;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ciphertext"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 271
    .end local p0    # "ciphertext":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object p0

    .line 262
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "ciphertext":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string v2, "AES"

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 263
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/securepreferences/SecurePreferencesOld;->sKey:[B

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 265
    new-instance v2, Ljava/lang/String;

    invoke-static {p0}, Lcom/securepreferences/SecurePreferencesOld;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    goto :goto_0

    .line 267
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 268
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/securepreferences/SecurePreferencesOld;->sLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 269
    sget-object v2, Lcom/securepreferences/SecurePreferencesOld;->TAG:Ljava/lang/String;

    const-string v3, "decrypt"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .prologue
    .line 128
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "cleartext"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 252
    .end local p0    # "cleartext":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object p0

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "cleartext":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string v2, "AES"

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 244
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/securepreferences/SecurePreferencesOld;->sKey:[B

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 246
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/securepreferences/SecurePreferencesOld;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 248
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 249
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/securepreferences/SecurePreferencesOld;->sLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 250
    sget-object v2, Lcom/securepreferences/SecurePreferencesOld;->TAG:Ljava/lang/String;

    const-string v3, "encrypt"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static generateAesKeyName(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7d0

    const/16 v7, 0x100

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 140
    .local v2, "password":[C
    invoke-static {p0}, Lcom/securepreferences/SecurePreferencesOld;->getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 146
    .local v3, "salt":[B
    :try_start_0
    const-string v4, "PBKDF2WithHmacSHA1"

    const/16 v5, 0x7d0

    const/16 v6, 0x100

    invoke-static {v2, v3, v4, v5, v6}, Lcom/securepreferences/SecurePreferencesOld;->generatePBEKey([C[BLjava/lang/String;II)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 155
    .local v1, "key":Ljavax/crypto/SecretKey;
    :goto_0
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lcom/securepreferences/SecurePreferencesOld;->encode([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 148
    .end local v1    # "key":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "PBEWithMD5AndDES"

    invoke-static {v2, v3, v4, v8, v7}, Lcom/securepreferences/SecurePreferencesOld;->generatePBEKey([C[BLjava/lang/String;II)Ljavax/crypto/SecretKey;

    move-result-object v1

    .restart local v1    # "key":Ljavax/crypto/SecretKey;
    goto :goto_0
.end method

.method private static generateAesKeyValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 224
    .local v3, "random":Ljava/security/SecureRandom;
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 226
    .local v2, "generator":Ljavax/crypto/KeyGenerator;
    const/16 v4, 0x100

    :try_start_0
    invoke-virtual {v2, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lcom/securepreferences/SecurePreferencesOld;->encode([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const/16 v4, 0xc0

    :try_start_1
    invoke-virtual {v2, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 230
    :catch_1
    move-exception v1

    .line 231
    .local v1, "e1":Ljava/lang/Exception;
    const/16 v4, 0x80

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    goto :goto_0
.end method

.method private static generatePBEKey([C[BLjava/lang/String;II)Ljavax/crypto/SecretKey;
    .locals 4
    .param p0, "passphraseOrPin"    # [C
    .param p1, "salt"    # [B
    .param p2, "algorthm"    # Ljava/lang/String;
    .param p3, "iterations"    # I
    .param p4, "keyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    if-nez p3, :cond_0

    .line 183
    const/16 p3, 0x3e8

    .line 186
    :cond_0
    const-string v3, "BC"

    invoke-static {p2, v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 188
    .local v2, "secretKeyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p0, p1, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 190
    .local v0, "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {v2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 191
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    return-object v1
.end method

.method private static getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "SERIAL"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, "deviceSerial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    .end local v0    # "deviceSerial":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v1

    .line 213
    .local v1, "ignored":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 509
    sget-boolean v0, Lcom/securepreferences/SecurePreferencesOld;->sLoggingEnabled:Z

    return v0
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0
    .param p0, "loggingEnabled"    # Z

    .prologue
    .line 513
    sput-boolean p0, Lcom/securepreferences/SecurePreferencesOld;->sLoggingEnabled:Z

    .line 514
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 389
    sget-object v0, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/securepreferences/SecurePreferencesOld;->edit()Lcom/securepreferences/SecurePreferencesOld$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/securepreferences/SecurePreferencesOld$Editor;
    .locals 2

    .prologue
    .line 394
    new-instance v0, Lcom/securepreferences/SecurePreferencesOld$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/securepreferences/SecurePreferencesOld$Editor;-><init>(Lcom/securepreferences/SecurePreferencesOld$1;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    sget-object v4, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 278
    .local v1, "encryptedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 280
    .local v0, "decryptedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 282
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/securepreferences/SecurePreferencesOld;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/securepreferences/SecurePreferencesOld;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v4

    goto :goto_0

    .line 288
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 374
    sget-object v2, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 380
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/securepreferences/SecurePreferencesOld;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 360
    sget-object v2, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 366
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .restart local p2    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/securepreferences/SecurePreferencesOld;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 332
    sget-object v2, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 338
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/securepreferences/SecurePreferencesOld;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 346
    sget-object v2, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 352
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/securepreferences/SecurePreferencesOld;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 293
    sget-object v1, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "encryptedValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/securepreferences/SecurePreferencesOld;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    .local p2, "defaultValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 319
    .local v1, "encryptedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 327
    .end local p2    # "defaultValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p2

    .line 322
    .restart local p2    # "defaultValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 324
    .local v0, "decryptedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 325
    .local v2, "encryptedValue":Ljava/lang/String;
    invoke-static {v2}, Lcom/securepreferences/SecurePreferencesOld;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "encryptedValue":Ljava/lang/String;
    :cond_1
    move-object p2, v0

    .line 327
    goto :goto_0
.end method

.method public getStringUnencrypted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 309
    sget-object v1, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferencesOld;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "nonEncryptedValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "nonEncryptedValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "nonEncryptedValue":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 519
    sget-object v0, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 521
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;Z)V
    .locals 2
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .param p2, "decryptKeys"    # Z

    .prologue
    .line 530
    if-nez p2, :cond_0

    .line 531
    invoke-virtual {p0, p1}, Lcom/securepreferences/SecurePreferencesOld;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 557
    :goto_0
    return-void

    .line 537
    :cond_0
    new-instance v0, Lcom/securepreferences/SecurePreferencesOld$1;

    invoke-direct {v0, p0, p1}, Lcom/securepreferences/SecurePreferencesOld$1;-><init>(Lcom/securepreferences/SecurePreferencesOld;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 554
    .local v0, "secureListener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    sget-object v1, Lcom/securepreferences/SecurePreferencesOld;->sOnSharedPreferenceChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v1, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 562
    sget-object v1, Lcom/securepreferences/SecurePreferencesOld;->sOnSharedPreferenceChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    sget-object v1, Lcom/securepreferences/SecurePreferencesOld;->sOnSharedPreferenceChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 565
    .local v0, "secureListener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    sget-object v1, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 571
    .end local v0    # "secureListener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :goto_0
    return-void

    .line 568
    :cond_0
    sget-object v1, Lcom/securepreferences/SecurePreferencesOld;->sFile:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method
