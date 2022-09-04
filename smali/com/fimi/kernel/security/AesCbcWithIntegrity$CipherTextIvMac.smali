.class public Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;
.super Ljava/lang/Object;
.source "AesCbcWithIntegrity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/security/AesCbcWithIntegrity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CipherTextIvMac"
.end annotation


# instance fields
.field private final cipherText:[B

.field private final iv:[B

.field private final mac:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "base64IvAndCiphertext"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "civArray":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 565
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot parse iv:ciphertext:mac"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->iv:[B

    .line 568
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->mac:[B

    .line 569
    aget-object v1, v0, v3

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->cipherText:[B

    .line 571
    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 3
    .param p1, "c"    # [B
    .param p2, "i"    # [B
    .param p3, "h"    # [B

    .prologue
    const/4 v2, 0x0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->cipherText:[B

    .line 547
    iget-object v0, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->cipherText:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->iv:[B

    .line 549
    iget-object v0, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->iv:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->mac:[B

    .line 551
    iget-object v0, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->mac:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 552
    return-void
.end method

.method public static ivCipherConcat([B[B)[B
    .locals 4
    .param p0, "iv"    # [B
    .param p1, "cipherText"    # [B

    .prologue
    const/4 v3, 0x0

    .line 581
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 582
    .local v0, "combined":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 613
    if-ne p0, p1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return v1

    .line 615
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 616
    goto :goto_0

    .line 617
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 618
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 619
    check-cast v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;

    .line 620
    .local v0, "other":Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;
    iget-object v3, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->cipherText:[B

    iget-object v4, v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->cipherText:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 621
    goto :goto_0

    .line 622
    :cond_4
    iget-object v3, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->iv:[B

    iget-object v4, v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->iv:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 623
    goto :goto_0

    .line 624
    :cond_5
    iget-object v3, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->mac:[B

    iget-object v4, v0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->mac:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 625
    goto :goto_0
.end method

.method public getCipherText()[B
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->cipherText:[B

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->iv:[B

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->mac:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 603
    const/16 v0, 0x1f

    .line 604
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 605
    .local v1, "result":I
    iget-object v2, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->cipherText:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 606
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->iv:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 607
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->mac:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 608
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 595
    iget-object v3, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->iv:[B

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "ivString":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->cipherText:[B

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "cipherTextString":Ljava/lang/String;
    iget-object v3, p0, Lcom/fimi/kernel/security/AesCbcWithIntegrity$CipherTextIvMac;->mac:[B

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "macString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
