.class Lcom/google/android/gms/internal/zzfgz;
.super Lcom/google/android/gms/internal/zzfgy;


# instance fields
.field protected final zzjwl:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfgy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzfgs;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    if-eq v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/zzfgz;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzfgz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->zzcxt()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfgs;->zzcxt()I

    move-result v0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    if-eq v1, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/google/android/gms/internal/zzfgz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/zzfgy;->zza(Lcom/google/android/gms/internal/zzfgs;II)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    array-length v0, v0

    return v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzfgr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfgr;->zze([BII)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/zzfgs;II)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    if-le p3, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length too large: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v1, p2, p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v1

    const/16 v2, 0x3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/zzfgz;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/zzfgz;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    iget-object v4, p1, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v1

    add-int v5, v1, p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v1

    add-int/2addr v1, p2

    :goto_0
    if-ge v2, v5, :cond_3

    aget-byte v6, v3, v2

    aget-byte v7, v4, v1

    if-eq v6, v7, :cond_2

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/zzfgs;->zzaa(II)Lcom/google/android/gms/internal/zzfgs;

    move-result-object v1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/zzfgs;->zzaa(II)Lcom/google/android/gms/internal/zzfgs;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzfgs;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public final zzaa(II)Lcom/google/android/gms/internal/zzfgs;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/zzfgz;->zzh(III)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzfgs;->zzpnw:Lcom/google/android/gms/internal/zzfgs;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzfgv;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzfgv;-><init>([BII)V

    goto :goto_0
.end method

.method protected zzb([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zzcxq()Lcom/google/android/gms/internal/zzfhb;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzfhb;->zzb([BIIZ)Lcom/google/android/gms/internal/zzfhb;

    move-result-object v0

    return-object v0
.end method

.method protected zzcxu()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzg(III)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgz;->zzcxu()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/zzfhz;->zza(I[BII)I

    move-result v0

    return v0
.end method

.method public zzld(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgz;->zzjwl:[B

    aget-byte v0, v0, p1

    return v0
.end method
