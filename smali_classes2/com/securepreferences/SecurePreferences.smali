.class public Lcom/securepreferences/SecurePreferences;
.super Ljava/lang/Object;
.source "SecurePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/securepreferences/SecurePreferences$1;,
        Lcom/securepreferences/SecurePreferences$Editor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sLoggingEnabled:Z


# instance fields
.field private keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

.field private sharedPrefFilename:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    .line 70
    const-class v0, Lcom/securepreferences/SecurePreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/securepreferences/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secretKey"    # Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;
    .param p3, "sharedPrefFilename"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/securepreferences/SecurePreferences;-><init>(Landroid/content/Context;Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secretKey"    # Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "sharedPrefFilename"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget-object v5, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v5, :cond_0

    .line 109
    invoke-direct {p0, p1, p4}, Lcom/securepreferences/SecurePreferences;->getSharedPreferenceFile(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 113
    :cond_0
    if-eqz p2, :cond_2

    .line 114
    iput-object p2, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    .line 163
    :cond_1
    return-void

    .line 115
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 118
    :try_start_0
    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->generateAesKeyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "keyAsString":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 122
    invoke-static {}, Lcom/tozny/crypto/android/AesCbcWithIntegrity;->generateKey()Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    move-result-object v5

    iput-object v5, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    .line 124
    iget-object v5, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    invoke-virtual {v6}, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 125
    .local v0, "committed":Z
    if-nez v0, :cond_3

    .line 126
    sget-object v5, Lcom/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v6, "Key not committed to prefs"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "committed":Z
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    if-nez v5, :cond_1

    .line 133
    new-instance v5, Ljava/security/GeneralSecurityException;

    const-string v6, "Problem generating Key"

    invoke-direct {v5, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyAsString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/security/GeneralSecurityException;
    sget-boolean v5, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v5, :cond_4

    .line 138
    sget-object v5, Lcom/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error init:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 129
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "keyAsString":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static {v3}, Lcom/tozny/crypto/android/AesCbcWithIntegrity;->keys(Ljava/lang/String;)Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    move-result-object v5

    iput-object v5, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyAsString":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 146
    .local v4, "salt":[B
    invoke-static {p3, v4}, Lcom/tozny/crypto/android/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;[B)Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    move-result-object v5

    iput-object v5, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    .line 148
    iget-object v5, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    if-nez v5, :cond_1

    .line 149
    new-instance v5, Ljava/security/GeneralSecurityException;

    const-string v6, "Problem generating Key From Password"

    invoke-direct {v5, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    .end local v4    # "salt":[B
    :catch_1
    move-exception v1

    .line 152
    .restart local v1    # "e":Ljava/security/GeneralSecurityException;
    sget-boolean v5, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v5, :cond_7

    .line 153
    sget-object v5, Lcom/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error init using user password:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_7
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "sharedPrefFilename"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/securepreferences/SecurePreferences;-><init>(Landroid/content/Context;Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method static synthetic access$100(Lcom/securepreferences/SecurePreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/securepreferences/SecurePreferences;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/securepreferences/SecurePreferences;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ciphertext"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    .end local p1    # "ciphertext":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 295
    .restart local p1    # "ciphertext":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$CipherTextIvMac;

    invoke-direct {v0, p1}, Lcom/tozny/crypto/android/AesCbcWithIntegrity$CipherTextIvMac;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "cipherTextIvMac":Lcom/tozny/crypto/android/AesCbcWithIntegrity$CipherTextIvMac;
    iget-object v2, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    invoke-static {v0, v2}, Lcom/tozny/crypto/android/AesCbcWithIntegrity;->decryptString(Lcom/tozny/crypto/android/AesCbcWithIntegrity$CipherTextIvMac;Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 298
    .end local v0    # "cipherTextIvMac":Lcom/tozny/crypto/android/AesCbcWithIntegrity$CipherTextIvMac;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/security/GeneralSecurityException;
    sget-boolean v2, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 300
    sget-object v2, Lcom/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v3, "decrypt"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    .line 302
    :catch_1
    move-exception v1

    .line 303
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v2, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 304
    sget-object v2, Lcom/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v3, "decrypt"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cleartext"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    .end local p1    # "cleartext":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 271
    .restart local p1    # "cleartext":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    invoke-static {p1, v2}, Lcom/tozny/crypto/android/AesCbcWithIntegrity;->encrypt(Ljava/lang/String;Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;)Lcom/tozny/crypto/android/AesCbcWithIntegrity$CipherTextIvMac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tozny/crypto/android/AesCbcWithIntegrity$CipherTextIvMac;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-boolean v2, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 274
    sget-object v2, Lcom/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v3, "encrypt"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object p1, v1

    .line 276
    goto :goto_0

    .line 277
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v2, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 279
    sget-object v2, Lcom/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v3, "encrypt"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object p1, v1

    .line 282
    goto :goto_0
.end method

.method private static generateAesKeyName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "password":Ljava/lang/String;
    invoke-static {p0}, Lcom/securepreferences/SecurePreferences;->getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 202
    .local v2, "salt":[B
    invoke-static {v1, v2}, Lcom/tozny/crypto/android/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;[B)Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    move-result-object v0

    .line 203
    .local v0, "generatedKeyName":Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;
    if-nez v0, :cond_0

    .line 204
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "Key not generated"

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    :cond_0
    invoke-virtual {v0}, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "SERIAL"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    .local v0, "deviceSerial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    .end local v0    # "deviceSerial":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :catch_0
    move-exception v1

    .line 232
    .local v1, "ignored":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSharedPreferenceFile(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefFilename"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences;->sharedPrefFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/securepreferences/SecurePreferences;->sharedPrefFilename:Ljava/lang/String;

    .line 175
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static hashPrefKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 246
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 247
    .local v1, "digest":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 248
    .local v0, "bytes":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 250
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 261
    .end local v0    # "bytes":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    sget-boolean v3, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v3, :cond_0

    .line 254
    sget-object v3, Lcom/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v4, "Problem generating hash"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 256
    :catch_1
    move-exception v2

    .line 257
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v3, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v3, :cond_0

    .line 258
    sget-object v3, Lcom/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v4, "Problem generating hash"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 614
    sget-boolean v0, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    return v0
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0
    .param p0, "loggingEnabled"    # Z

    .prologue
    .line 618
    sput-boolean p0, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    .line 619
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public destroyKeys()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    .line 189
    return-void
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/securepreferences/SecurePreferences;->edit()Lcom/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/securepreferences/SecurePreferences$Editor;
    .locals 2

    .prologue
    .line 499
    new-instance v0, Lcom/securepreferences/SecurePreferences$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/securepreferences/SecurePreferences$Editor;-><init>(Lcom/securepreferences/SecurePreferences;Lcom/securepreferences/SecurePreferences$1;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 8
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
    .line 317
    iget-object v6, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 318
    .local v3, "encryptedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 320
    .local v1, "decryptedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 322
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "cipherText":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    invoke-virtual {v6}, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 326
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v0    # "cipherText":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 330
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/securepreferences/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v6, :cond_1

    .line 331
    sget-object v6, Lcom/securepreferences/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v7, "error during getAll"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_2
    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 423
    iget-object v2, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 429
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
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
    .line 409
    iget-object v2, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 415
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .restart local p2    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
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
    .line 381
    iget-object v2, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 387
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
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
    .line 395
    iget-object v2, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 401
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
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
    .line 343
    iget-object v1, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "encryptedValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

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
    .line 366
    .local p2, "defaultValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 368
    .local v1, "encryptedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 376
    .end local p2    # "defaultValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p2

    .line 371
    .restart local p2    # "defaultValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 373
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

    .line 374
    .local v2, "encryptedValue":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "encryptedValue":Ljava/lang/String;
    :cond_1
    move-object p2, v0

    .line 376
    goto :goto_0
.end method

.method public getUnencryptedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v1, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/securepreferences/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
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

.method public handlePasswordChange(Ljava/lang/String;Landroid/content/Context;)V
    .locals 15
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-static/range {p2 .. p2}, Lcom/securepreferences/SecurePreferences;->getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 452
    .local v10, "salt":[B
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/tozny/crypto/android/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;[B)Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    move-result-object v4

    .line 454
    .local v4, "newKey":Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;
    iget-object v14, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 455
    .local v1, "allOfThePrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v14

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 456
    .local v11, "unencryptedPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 458
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 459
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 460
    .local v6, "prefKey":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 461
    .local v8, "prefValue":Ljava/lang/Object;
    instance-of v14, v8, Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object v9, v8

    .line 463
    check-cast v9, Ljava/lang/String;

    .line 464
    .local v9, "prefValueString":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/securepreferences/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, "plainTextPrefValue":Ljava/lang/String;
    invoke-interface {v11, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 470
    .end local v5    # "plainTextPrefValue":Ljava/lang/String;
    .end local v6    # "prefKey":Ljava/lang/String;
    .end local v8    # "prefValue":Ljava/lang/Object;
    .end local v9    # "prefValueString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/securepreferences/SecurePreferences;->destroyKeys()V

    .line 472
    iget-object v14, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 473
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 477
    const/4 v14, 0x0

    iput-object v14, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 478
    iget-object v14, p0, Lcom/securepreferences/SecurePreferences;->sharedPrefFilename:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v14}, Lcom/securepreferences/SecurePreferences;->getSharedPreferenceFile(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v14

    iput-object v14, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 481
    iput-object v4, p0, Lcom/securepreferences/SecurePreferences;->keys:Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    .line 483
    iget-object v14, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 486
    .local v13, "updatedEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 487
    .local v12, "unencryptedPrefsKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 488
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 489
    .restart local v6    # "prefKey":Ljava/lang/String;
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 490
    .local v7, "prefPlainText":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/securepreferences/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v6, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 492
    .end local v6    # "prefKey":Ljava/lang/String;
    .end local v7    # "prefPlainText":Ljava/lang/String;
    :cond_2
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 626
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;Z)V
    .locals 0
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .param p2, "decryptKeys"    # Z

    .prologue
    .line 635
    if-nez p2, :cond_0

    .line 636
    invoke-virtual {p0, p1}, Lcom/securepreferences/SecurePreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 666
    :cond_0
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/securepreferences/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 682
    return-void
.end method
