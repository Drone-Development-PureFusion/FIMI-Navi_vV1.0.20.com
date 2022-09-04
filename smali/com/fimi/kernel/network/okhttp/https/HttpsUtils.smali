.class public Lcom/fimi/kernel/network/okhttp/https/HttpsUtils;
.super Ljava/lang/Object;
.source "HttpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/network/okhttp/https/HttpsUtils$MyTrustManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .param p0, "x0"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/fimi/kernel/network/okhttp/https/HttpsUtils;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method private static chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p0, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 113
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 114
    .local v0, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v3, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 115
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 118
    .end local v0    # "trustManager":Ljavax/net/ssl/TrustManager;
    :goto_1
    return-object v0

    .line 113
    .restart local v0    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSslSocketFactory([Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 8
    .param p0, "certificates"    # [Ljava/io/InputStream;
    .param p1, "bksFile"    # Ljava/io/InputStream;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 27
    :try_start_0
    invoke-static {p0}, Lcom/fimi/kernel/network/okhttp/https/HttpsUtils;->prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 28
    .local v3, "trustManagers":[Ljavax/net/ssl/TrustManager;
    invoke-static {p1, p2}, Lcom/fimi/kernel/network/okhttp/https/HttpsUtils;->prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .line 29
    .local v1, "keyManagers":[Ljavax/net/ssl/KeyManager;
    const-string v4, "SSL"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 31
    .local v2, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    new-instance v6, Lcom/fimi/kernel/network/okhttp/https/HttpsUtils$MyTrustManager;

    .line 32
    invoke-static {v3}, Lcom/fimi/kernel/network/okhttp/https/HttpsUtils;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fimi/kernel/network/okhttp/https/HttpsUtils$MyTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    aput-object v6, v4, v5

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 31
    invoke-virtual {v2, v1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 33
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    return-object v4

    .line 34
    .end local v1    # "keyManagers":[Ljavax/net/ssl/KeyManager;
    .end local v2    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v3    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 36
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 37
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 38
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_2
    move-exception v0

    .line 39
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static initSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v3, "SSL"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 157
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    .line 158
    invoke-static {}, Lcom/fimi/kernel/network/okhttp/https/HttpsUtils;->initTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    aput-object v4, v2, v3

    .line 159
    .local v2, "xTrustArray":[Ljavax/net/ssl/X509TrustManager;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v2    # "xTrustArray":[Ljavax/net/ssl/X509TrustManager;
    :goto_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    return-object v3

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static initTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/fimi/kernel/network/okhttp/https/HttpsUtils$1;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/https/HttpsUtils$1;-><init>()V

    .line 182
    .local v0, "mTrustManager":Ljavax/net/ssl/X509TrustManager;
    return-object v0
.end method

.method private static prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 5
    .param p0, "bksFile"    # Ljava/io/InputStream;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 86
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-object v3

    .line 89
    :cond_1
    :try_start_0
    const-string v4, "BKS"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 90
    .local v0, "clientKeyStore":Ljava/security/KeyStore;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 92
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 93
    .local v2, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 94
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    goto :goto_0

    .line 96
    .end local v0    # "clientKeyStore":Ljava/security/KeyStore;
    .end local v2    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 101
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v1}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_3
    move-exception v1

    .line 103
    .local v1, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static varargs prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;
    .locals 12
    .param p0, "certificates"    # [Ljava/io/InputStream;

    .prologue
    const/4 v8, 0x0

    .line 44
    if-eqz p0, :cond_0

    array-length v9, p0

    if-gtz v9, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v8

    .line 48
    :cond_1
    :try_start_0
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 49
    .local v2, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 50
    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 51
    const/4 v4, 0x0

    .line 52
    .local v4, "index":I
    array-length v10, p0

    const/4 v9, 0x0

    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v0, p0, v9

    .line 53
    .local v0, "certificate":Ljava/io/InputStream;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "certificateAlias":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v6, v1, v11}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 56
    if-eqz v0, :cond_2

    .line 57
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 52
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .line 63
    .end local v0    # "certificate":Ljava/io/InputStream;
    .end local v1    # "certificateAlias":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    .line 65
    .local v7, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v7

    .line 66
    invoke-virtual {v7, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 68
    invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v8

    .line 70
    .local v8, "trustManagers":[Ljavax/net/ssl/TrustManager;
    goto :goto_0

    .line 71
    .end local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "index":I
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v3

    .line 72
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    .line 74
    .local v3, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v3

    .line 76
    .local v3, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catch_3
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "certificate":Ljava/io/InputStream;
    .restart local v1    # "certificateAlias":Ljava/lang/String;
    .restart local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "index":I
    .restart local v6    # "keyStore":Ljava/security/KeyStore;
    :catch_4
    move-exception v11

    goto :goto_2
.end method
