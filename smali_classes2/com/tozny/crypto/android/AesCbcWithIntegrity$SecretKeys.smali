.class public Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;
.super Ljava/lang/Object;
.source "AesCbcWithIntegrity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tozny/crypto/android/AesCbcWithIntegrity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecretKeys"
.end annotation


# instance fields
.field private confidentialityKey:Ljavax/crypto/SecretKey;

.field private integrityKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "confidentialityKeyIn"    # Ljavax/crypto/SecretKey;
    .param p2, "integrityKeyIn"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    invoke-virtual {p0, p1}, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->setConfidentialityKey(Ljavax/crypto/SecretKey;)V

    .line 449
    invoke-virtual {p0, p2}, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->setIntegrityKey(Ljavax/crypto/SecretKey;)V

    .line 450
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 489
    if-ne p0, p1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v1

    .line 491
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 492
    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 494
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 495
    check-cast v0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;

    .line 496
    .local v0, "other":Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;
    iget-object v3, p0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    iget-object v4, v0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 497
    goto :goto_0

    .line 498
    :cond_4
    iget-object v3, p0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->confidentialityKey:Ljavax/crypto/SecretKey;

    iget-object v4, v0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->confidentialityKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 499
    goto :goto_0
.end method

.method public getConfidentialityKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->confidentialityKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getIntegrityKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 480
    const/16 v0, 0x1f

    .line 481
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 482
    .local v1, "result":I
    iget-object v2, p0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->confidentialityKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 483
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 484
    return v1
.end method

.method public setConfidentialityKey(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "confidentialityKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->confidentialityKey:Ljavax/crypto/SecretKey;

    .line 458
    return-void
.end method

.method public setIntegrityKey(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "integrityKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    .line 466
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->getConfidentialityKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tozny/crypto/android/AesCbcWithIntegrity$SecretKeys;->getIntegrityKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
