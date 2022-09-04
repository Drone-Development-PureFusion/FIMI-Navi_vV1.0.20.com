.class public Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
.super Ljava/lang/Object;
.source "AesCbcWithIntegrity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/security/AesCbcWithIntegrity;
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
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->setConfidentialityKey(Ljavax/crypto/SecretKey;)V

    .line 448
    invoke-virtual {p0, p2}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->setIntegrityKey(Ljavax/crypto/SecretKey;)V

    .line 449
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 488
    if-ne p0, p1, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v1

    .line 490
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 491
    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 493
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 494
    check-cast v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;

    .line 495
    .local v0, "other":Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;
    iget-object v3, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    iget-object v4, v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 496
    goto :goto_0

    .line 497
    :cond_4
    iget-object v3, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->confidentialityKey:Ljavax/crypto/SecretKey;

    iget-object v4, v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->confidentialityKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 498
    goto :goto_0
.end method

.method public getConfidentialityKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->confidentialityKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getIntegrityKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 479
    const/16 v0, 0x1f

    .line 480
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 481
    .local v1, "result":I
    iget-object v2, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->confidentialityKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 482
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 483
    return v1
.end method

.method public setConfidentialityKey(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "confidentialityKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->confidentialityKey:Ljavax/crypto/SecretKey;

    .line 457
    return-void
.end method

.method public setIntegrityKey(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "integrityKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    .line 465
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->getConfidentialityKey()Ljavax/crypto/SecretKey;

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

    .line 474
    invoke-virtual {p0}, Lcom/fimi/kernel/security/AesCbcWithIntegrity$SecretKeys;->getIntegrityKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    return-object v0
.end method
