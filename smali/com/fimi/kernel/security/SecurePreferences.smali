.class public Lcom/fimi/kernel/security/SecurePreferences;
.super Ljava/lang/Object;
.source "SecurePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/security/SecurePreferences$Editor;
    }
.end annotation


# static fields
.field private static final ORIGINAL_ITERATION_COUNT:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static sLoggingEnabled:Z


# instance fields
.field private keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

.field private salt:Ljava/lang/String;

.field private sharedPrefFilename:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/kernel/security/SecurePreferences;->sLoggingEnabled:Z

    .line 70
    const-class v0, Lcom/fimi/kernel/security/SecurePreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/security/SecurePreferences;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/fimi/kernel/security/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iterationCount"    # I

    .prologue
    .line 91
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/fimi/kernel/security/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secretKey"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .param p3, "sharedPrefFilename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 119
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/fimi/kernel/security/SecurePreferences;-><init>(Landroid/content/Context;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secretKey"    # Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "salt"    # Ljava/lang/String;
    .param p5, "sharedPrefFilename"    # Ljava/lang/String;
    .param p6, "iterationCount"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iget-object v5, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v5, :cond_0

    .line 132
    invoke-direct {p0, p1, p5}, Lcom/fimi/kernel/security/SecurePreferences;->getSharedPreferenceFile(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 135
    :cond_0
    iput-object p4, p0, Lcom/fimi/kernel/security/SecurePreferences;->salt:Ljava/lang/String;

    .line 137
    if-eqz p2, :cond_2

    .line 138
    iput-object p2, p0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    .line 182
    :cond_1
    return-void

    .line 139
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 142
    :try_start_0
    invoke-direct {p0, p1, p6}, Lcom/fimi/kernel/security/SecurePreferences;->generateAesKeyName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "keyAsString":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 146
    invoke-static {}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->generateKey()Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    move-result-object v5

    iput-object v5, p0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    .line 148
    iget-object v5, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    invoke-virtual {v6}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 149
    .local v0, "committed":Z
    if-nez v0, :cond_3

    .line 150
    sget-object v5, Lcom/fimi/kernel/security/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v6, "Key not committed to prefs"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v0    # "committed":Z
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    if-nez v5, :cond_1

    .line 157
    new-instance v5, Ljava/security/GeneralSecurityException;

    const-string v6, "Problem generating Key"

    invoke-direct {v5, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyAsString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/security/GeneralSecurityException;
    sget-boolean v5, Lcom/fimi/kernel/security/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v5, :cond_4

    .line 162
    sget-object v5, Lcom/fimi/kernel/security/SecurePreferences;->TAG:Ljava/lang/String;

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

    .line 164
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 153
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "keyAsString":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static {v3}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->keys(Ljava/lang/String;)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    move-result-object v5

    iput-object v5, p0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 169
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyAsString":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-direct {p0, p1}, Lcom/fimi/kernel/security/SecurePreferences;->getSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 170
    .local v4, "saltBytes":[B
    invoke-static {p3, v4, p6}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;[BI)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    move-result-object v5

    iput-object v5, p0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    .line 172
    iget-object v5, p0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    if-nez v5, :cond_1

    .line 173
    new-instance v5, Ljava/security/GeneralSecurityException;

    const-string v6, "Problem generating Key From Password"

    invoke-direct {v5, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    .end local v4    # "saltBytes":[B
    :catch_1
    move-exception v1

    .line 176
    .restart local v1    # "e":Ljava/security/GeneralSecurityException;
    sget-boolean v5, Lcom/fimi/kernel/security/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v5, :cond_7

    .line 177
    sget-object v5, Lcom/fimi/kernel/security/SecurePreferences;->TAG:Ljava/lang/String;

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

    .line 179
    :cond_7
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "sharedPrefFilename"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v3, 0x0

    const/16 v5, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fimi/kernel/security/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "sharedPrefFilename"    # Ljava/lang/String;
    .param p4, "iterationCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/fimi/kernel/security/SecurePreferences;-><init>(Landroid/content/Context;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "salt"    # Ljava/lang/String;
    .param p4, "sharedPrefFilename"    # Ljava/lang/String;
    .param p5, "iterationCount"    # I

    .prologue
    .line 127
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fimi/kernel/security/SecurePreferences;-><init>(Landroid/content/Context;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/kernel/security/SecurePreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/security/SecurePreferences;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/kernel/security/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/security/SecurePreferences;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/fimi/kernel/security/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ciphertext"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    .end local p1    # "ciphertext":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 320
    .restart local p1    # "ciphertext":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;

    invoke-direct {v0, p1}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "cipherTextIvMac":Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;
    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    invoke-static {v0, v2}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->decryptString(Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 322
    .end local v0    # "cipherTextIvMac":Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    sget-boolean v2, Lcom/fimi/kernel/security/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 324
    sget-object v2, Lcom/fimi/kernel/security/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v3, "decrypt"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cleartext"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    .end local p1    # "cleartext":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 297
    .restart local p1    # "cleartext":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    invoke-static {p1, v2}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->encrypt(Ljava/lang/String;Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;)Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-boolean v2, Lcom/fimi/kernel/security/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v2, :cond_1

    .line 300
    sget-object v2, Lcom/fimi/kernel/security/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v3, "encrypt"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object p1, v1

    .line 302
    goto :goto_0

    .line 303
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v2, Lcom/fimi/kernel/security/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v2, :cond_2

    .line 305
    sget-object v2, Lcom/fimi/kernel/security/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v3, "encrypt"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object p1, v1

    .line 308
    goto :goto_0
.end method

.method private generateAesKeyName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "password":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/fimi/kernel/security/SecurePreferences;->getSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 221
    .local v2, "salt":[B
    invoke-static {v1, v2, p2}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;[BI)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    move-result-object v0

    .line 223
    .local v0, "generatedKeyName":Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    invoke-virtual {v0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "SERIAL"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    .local v0, "deviceSerial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    .line 240
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    .end local v0    # "deviceSerial":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v1

    .line 248
    .local v1, "ignored":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSalt(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences;->salt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->getDeviceSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences;->salt:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSharedPreferenceFile(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefFilename"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p2, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPrefFilename:Ljava/lang/String;

    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
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
    .line 277
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 278
    .local v1, "digest":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 279
    .local v0, "bytes":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 281
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 288
    .end local v0    # "bytes":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    sget-boolean v3, Lcom/fimi/kernel/security/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v3, :cond_0

    .line 285
    sget-object v3, Lcom/fimi/kernel/security/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v4, "Problem generating hash"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 283
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 642
    sget-boolean v0, Lcom/fimi/kernel/security/SecurePreferences;->sLoggingEnabled:Z

    return v0
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0
    .param p0, "loggingEnabled"    # Z

    .prologue
    .line 646
    sput-boolean p0, Lcom/fimi/kernel/security/SecurePreferences;->sLoggingEnabled:Z

    .line 647
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public destroyKeys()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    .line 207
    return-void
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/fimi/kernel/security/SecurePreferences;->edit()Lcom/fimi/kernel/security/SecurePreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/fimi/kernel/security/SecurePreferences$Editor;
    .locals 2

    .prologue
    .line 529
    new-instance v0, Lcom/fimi/kernel/security/SecurePreferences$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fimi/kernel/security/SecurePreferences$Editor;-><init>(Lcom/fimi/kernel/security/SecurePreferences;Lcom/fimi/kernel/security/SecurePreferences$1;)V

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
    .line 336
    iget-object v5, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 337
    .local v3, "encryptedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v1, Ljava/util/HashMap;

    .line 338
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 339
    .local v1, "decryptedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 341
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 343
    .local v0, "cipherText":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    invoke-virtual {v6}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 345
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 346
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/fimi/kernel/security/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 345
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    .end local v0    # "cipherText":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/fimi/kernel/security/SecurePreferences;->sLoggingEnabled:Z

    if-eqz v6, :cond_1

    .line 350
    sget-object v6, Lcom/fimi/kernel/security/SecurePreferences;->TAG:Ljava/lang/String;

    const-string v7, "error during getAll"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 354
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 353
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 357
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
    .line 449
    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 450
    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 449
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 455
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/fimi/kernel/security/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getEncryptedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 383
    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 382
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "encryptedValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "encryptedValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "encryptedValue":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 435
    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 436
    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 435
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 441
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .restart local p2    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/fimi/kernel/security/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
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
    .line 405
    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 406
    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 405
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 415
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 412
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/fimi/kernel/security/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 421
    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 422
    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 421
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "encryptedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 427
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/fimi/kernel/security/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-object v2, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 363
    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 362
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "encryptedValue":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fimi/kernel/security/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "decryptedValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 369
    .end local v0    # "decryptedValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "decryptedValue":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
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
    .line 390
    .local p2, "defaultValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 391
    invoke-static {p1}, Lcom/fimi/kernel/security/SecurePreferences;->hashPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 390
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 392
    .local v1, "encryptedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 400
    .end local p2    # "defaultValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p2

    .line 395
    .restart local p2    # "defaultValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 396
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 397
    .local v0, "decryptedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    .local v2, "encryptedValue":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/fimi/kernel/security/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "encryptedValue":Ljava/lang/String;
    :cond_1
    move-object p2, v0

    .line 400
    goto :goto_0
.end method

.method public handlePasswordChange(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 523
    const/16 v0, 0x2710

    invoke-virtual {p0, p1, p2, v0}, Lcom/fimi/kernel/security/SecurePreferences;->handlePasswordChange(Ljava/lang/String;Landroid/content/Context;I)V

    .line 524
    return-void
.end method

.method public handlePasswordChange(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 16
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "iterationCount"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/fimi/kernel/security/SecurePreferences;->getSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 481
    .local v10, "salt":[B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v10, v1}, Lcom/fimi/kernel/security/AesCbcWithIntegrity;->generateKeyFromPassword(Ljava/lang/String;[BI)Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    move-result-object v4

    .line 483
    .local v4, "newKey":Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 484
    .local v2, "allOfThePrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v14

    invoke-direct {v11, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 486
    .local v11, "unencryptedPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 487
    .local v6, "prefKey":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 488
    .local v8, "prefValue":Ljava/lang/Object;
    instance-of v15, v8, Ljava/lang/String;

    if-eqz v15, :cond_0

    move-object v9, v8

    .line 490
    check-cast v9, Ljava/lang/String;

    .line 491
    .local v9, "prefValueString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/fimi/kernel/security/SecurePreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, "plainTextPrefValue":Ljava/lang/String;
    invoke-interface {v11, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 497
    .end local v5    # "plainTextPrefValue":Ljava/lang/String;
    .end local v6    # "prefKey":Ljava/lang/String;
    .end local v8    # "prefValue":Ljava/lang/Object;
    .end local v9    # "prefValueString":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/kernel/security/SecurePreferences;->destroyKeys()V

    .line 499
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 500
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 501
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 504
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 505
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPrefFilename:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, Lcom/fimi/kernel/security/SecurePreferences;->getSharedPreferenceFile(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 508
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fimi/kernel/security/SecurePreferences;->keys:Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    .line 510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 513
    .local v13, "updatedEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 514
    .local v12, "unencryptedPrefsKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 515
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 516
    .restart local v6    # "prefKey":Ljava/lang/String;
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 517
    .local v7, "prefPlainText":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/fimi/kernel/security/SecurePreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v6, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 519
    .end local v6    # "prefKey":Ljava/lang/String;
    .end local v7    # "prefPlainText":Ljava/lang/String;
    :cond_2
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 520
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 652
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 653
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 654
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;Z)V
    .locals 0
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .param p2, "decryptKeys"    # Z

    .prologue
    .line 663
    if-nez p2, :cond_0

    .line 664
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/security/SecurePreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 666
    :cond_0
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/fimi/kernel/security/SecurePreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 672
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 673
    return-void
.end method
