.class Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;
.super Ljava/lang/Object;
.source "OAuth1aParameters.java"


# static fields
.field private static final RAND:Ljava/security/SecureRandom;

.field private static final SIGNATURE_METHOD:Ljava/lang/String; = "HMAC-SHA1"

.field private static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private final authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field private final callback:Ljava/lang/String;

.field private final method:Ljava/lang/String;

.field private final postParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->RAND:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "authConfig"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .param p2, "authToken"    # Lcom/twitter/sdk/android/core/TwitterAuthToken;
    .param p3, "callback"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p6, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 60
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 61
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->callback:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->method:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->url:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->postParams:Ljava/util/Map;

    .line 65
    return-void
.end method

.method private appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 184
    if-eqz p3, :cond_0

    .line 185
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-static {p2}, Lcom/twitter/sdk/android/core/internal/network/UrlUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    invoke-static {p3}, Lcom/twitter/sdk/android/core/internal/network/UrlUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    return-void
.end method

.method private getEncodedQueryParams(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "params":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v3, "paramsBuf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v2

    .line 122
    .local v2, "numParams":I
    const/4 v0, 0x0

    .line 123
    .local v0, "current":I
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/twitter/sdk/android/core/internal/network/UrlUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/sdk/android/core/internal/network/UrlUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%3D"

    .line 125
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/twitter/sdk/android/core/internal/network/UrlUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/sdk/android/core/internal/network/UrlUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 128
    if-ge v0, v2, :cond_0

    .line 129
    const-string v4, "%26"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 132
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getNonce()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->RAND:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSigningKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v0, v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    .line 161
    .local v0, "tokenSecret":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 162
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->getConsumerSecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/sdk/android/core/internal/network/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x26

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/network/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    return-object v1

    .line 160
    .end local v0    # "tokenSecret":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimestamp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 84
    .local v0, "secondsFromEpoch":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method calculateSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "signatureBase"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->getSigningKey()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "key":Ljava/lang/String;
    const-string v7, "UTF8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 141
    .local v5, "signatureBaseBytes":[B
    const-string v7, "UTF8"

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 142
    .local v2, "keyBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "HmacSHA1"

    invoke-direct {v4, v2, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 143
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    const-string v7, "HmacSHA1"

    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 144
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 145
    invoke-virtual {v3, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v6

    .line 146
    .local v6, "signatureBytes":[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-static {v6, v7, v8}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lokio/ByteString;->base64()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 155
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyBytes":[B
    .end local v3    # "mac":Ljavax/crypto/Mac;
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "signatureBaseBytes":[B
    .end local v6    # "signatureBytes":[B
    :goto_0
    return-object v7

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v7

    const-string v8, "Twitter"

    const-string v9, "Failed to calculate signature"

    invoke-interface {v7, v8, v9, v0}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    const-string v7, ""

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v7

    const-string v8, "Twitter"

    const-string v9, "Failed to calculate signature"

    invoke-interface {v7, v8, v9, v0}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    const-string v7, ""

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v7

    const-string v8, "Twitter"

    const-string v9, "Failed to calculate signature"

    invoke-interface {v7, v8, v9, v0}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    const-string v7, ""

    goto :goto_0
.end method

.method constructAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OAuth"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "oauth_callback"

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->callback:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v2, "oauth_consumer_key"

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->getConsumerKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "oauth_nonce"

    invoke-direct {p0, v0, v2, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "oauth_signature"

    invoke-direct {p0, v0, v2, p3}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "oauth_signature_method"

    const-string v3, "HMAC-SHA1"

    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v2, "oauth_timestamp"

    invoke-direct {p0, v0, v2, p2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v1, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    .line 177
    .local v1, "token":Ljava/lang/String;
    :goto_0
    const-string v2, "oauth_token"

    invoke-direct {p0, v0, v2, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, "oauth_version"

    const-string v3, "1.0"

    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 176
    .end local v1    # "token":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method constructSignatureBase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x26

    .line 89
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->url:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 90
    .local v3, "uri":Ljava/net/URI;
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/twitter/sdk/android/core/internal/network/UrlUtils;->getQueryParams(Ljava/net/URI;Z)Ljava/util/TreeMap;

    move-result-object v1

    .line 91
    .local v1, "params":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->postParams:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->postParams:Ljava/util/Map;

    invoke-virtual {v1, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->callback:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 97
    const-string v4, "oauth_callback"

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->callback:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_1
    const-string v4, "oauth_consumer_key"

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v5}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->getConsumerKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v4, "oauth_nonce"

    invoke-virtual {v1, v4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v4, "oauth_signature_method"

    const-string v5, "HMAC-SHA1"

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v4, "oauth_timestamp"

    invoke-virtual {v1, v4, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v4, v4, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 104
    const-string v4, "oauth_token"

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v5, v5, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_2
    const-string v4, "oauth_version"

    const-string v5, "1.0"

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "baseUrl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->method:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 112
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 113
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/network/UrlUtils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 115
    invoke-direct {p0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->getEncodedQueryParams(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getAuthorizationHeader()Ljava/lang/String;
    .locals 5

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->getNonce()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "nonce":Ljava/lang/String;
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "timestamp":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->constructSignatureBase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "signatureBase":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->calculateSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "signature":Ljava/lang/String;
    invoke-virtual {p0, v0, v3, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aParameters;->constructAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
