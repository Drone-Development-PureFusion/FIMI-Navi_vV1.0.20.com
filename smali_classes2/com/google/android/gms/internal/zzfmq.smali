.class public final Lcom/google/android/gms/internal/zzfmq;
.super Lcom/google/android/gms/internal/zzflm;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzflm",
        "<",
        "Lcom/google/android/gms/internal/zzfmq;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private zzpyq:[B

.field private zzpyr:Ljava/lang/String;

.field private zzpys:[[B

.field private zzpyt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzflm;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyq:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwd:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyt:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpnr:I

    return-void
.end method

.method private zzddd()Lcom/google/android/gms/internal/zzfmq;
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzflm;->zzdck()Lcom/google/android/gms/internal/zzflm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfmq;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    invoke-virtual {v1}, [[B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfmq;->zzddd()Lcom/google/android/gms/internal/zzfmq;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzfmq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzfmq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyq:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfmq;->zzpyq:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzflq;->zza([[B[[B)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyt:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzfmq;->zzpyt:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/internal/zzfmq;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzfmq;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfmq;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzflo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyq:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    invoke-static {v2}, Lcom/google/android/gms/internal/zzflq;->zzd([[B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyt:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzflo;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflj;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyq:[B

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzflv;->zzb(Lcom/google/android/gms/internal/zzflj;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->zzcyd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyt:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzflk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyq:[B

    sget-object v1, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyq:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzflk;->zzc(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzflk;->zzc(I[B)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyt:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyt:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzflk;->zzl(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzflk;->zzp(ILjava/lang/String;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzflm;->zza(Lcom/google/android/gms/internal/zzflk;)V

    return-void
.end method

.method public final synthetic zzdck()Lcom/google/android/gms/internal/zzflm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfls;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfmq;

    return-object v0
.end method

.method public final synthetic zzdcl()Lcom/google/android/gms/internal/zzfls;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfls;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfmq;

    return-object v0
.end method

.method protected final zzq()I
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzflm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyq:[B

    sget-object v3, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyq:[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzflk;->zzd(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpys:[[B

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzflk;->zzbg([B)I

    move-result v2

    add-int/2addr v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyt:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/zzflk;->zzlw(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmq;->zzpyr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzflk;->zzq(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0

    :cond_5
    move v2, v3

    goto :goto_1
.end method
