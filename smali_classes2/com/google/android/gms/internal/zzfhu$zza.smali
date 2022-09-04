.class public Lcom/google/android/gms/internal/zzfhu$zza;
.super Lcom/google/android/gms/internal/zzfgk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfhu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/zzfhu",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/zzfhu$zza",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/zzfgk",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzppk:Lcom/google/android/gms/internal/zzfhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzppl:Lcom/google/android/gms/internal/zzfhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzppm:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzfhu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfgk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppk:Lcom/google/android/gms/internal/zzfhu;

    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppx:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhu;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfhu;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzfhu$zzf;->zzppq:Lcom/google/android/gms/internal/zzfhu$zzf;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzpps:I

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(Lcom/google/android/gms/internal/zzfko;Lcom/google/android/gms/internal/zzfko;)Lcom/google/android/gms/internal/zzfko;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzfhb;",
            "Lcom/google/android/gms/internal/zzfhm;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfhu$zza;->zzczv()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppv:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    throw v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppk:Lcom/google/android/gms/internal/zzfhu;

    check-cast v0, Lcom/google/android/gms/internal/zzfhu;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppy:I

    invoke-virtual {v0, v1, v3, v3}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhu$zza;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    :goto_0
    check-cast v1, Lcom/google/android/gms/internal/zzfhu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfhu$zza;->zza(Lcom/google/android/gms/internal/zzfhu;)Lcom/google/android/gms/internal/zzfhu$zza;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    sget v2, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppw:I

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfko;->zzbkr()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzfhu;->zza(Lcom/google/android/gms/internal/zzfhu;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/zzfgj;)Lcom/google/android/gms/internal/zzfgk;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzfhu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfhu$zza;->zza(Lcom/google/android/gms/internal/zzfhu;)Lcom/google/android/gms/internal/zzfhu$zza;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfgk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzfgk;->zzb(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfjd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhu$zza;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfhu;)Lcom/google/android/gms/internal/zzfhu$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfhu$zza;->zzczv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzfhu$zza;->zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfhu;)V

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfjd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfhu$zza;->zzd(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu$zza;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzcxj()Lcom/google/android/gms/internal/zzfgk;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfgk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhu$zza;

    return-object v0
.end method

.method public final synthetic zzczu()Lcom/google/android/gms/internal/zzfjc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppk:Lcom/google/android/gms/internal/zzfhu;

    return-object v0
.end method

.method protected final zzczv()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppx:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzfhu$zza;->zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfhu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    :cond_0
    return-void
.end method

.method public final zzczw()Lcom/google/android/gms/internal/zzfhu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppw:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfko;->zzbkr()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    goto :goto_0
.end method

.method public final zzczx()Lcom/google/android/gms/internal/zzfhu;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/zzfhu;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppt:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/zzfkm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzfkm;-><init>(Lcom/google/android/gms/internal/zzfjc;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppw:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfko;->zzbkr()V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppr:I

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_2
    if-eqz v5, :cond_3

    sget v4, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppu:I

    if-eqz v3, :cond_5

    move-object v1, v0

    :goto_3
    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method public final synthetic zzczy()Lcom/google/android/gms/internal/zzfjc;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppw:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfko;->zzbkr()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    goto :goto_0
.end method

.method public final synthetic zzczz()Lcom/google/android/gms/internal/zzfjc;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/zzfhu;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppt:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/zzfkm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzfkm;-><init>(Lcom/google/android/gms/internal/zzfjc;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppw:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfko;->zzbkr()V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu$zza;->zzppl:Lcom/google/android/gms/internal/zzfhu;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppr:I

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_2
    if-eqz v5, :cond_3

    sget v4, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppu:I

    if-eqz v3, :cond_5

    move-object v1, v0

    :goto_3
    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_3

    :cond_6
    return-object v0
.end method
