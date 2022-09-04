.class final Lcom/google/android/gms/internal/zzfhi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfli;


# instance fields
.field private final zzpob:Lcom/google/android/gms/internal/zzfhg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzfhg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzfhz;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfhi;->zzpob:Lcom/google/android/gms/internal/zzfhg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhi;->zzpob:Lcom/google/android/gms/internal/zzfhg;

    iput-object p0, v0, Lcom/google/android/gms/internal/zzfhg;->zzpoq:Lcom/google/android/gms/internal/zzfhi;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzfhg;)Lcom/google/android/gms/internal/zzfhi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhg;->zzpoq:Lcom/google/android/gms/internal/zzfhi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhg;->zzpoq:Lcom/google/android/gms/internal/zzfhi;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzfhi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfhi;-><init>(Lcom/google/android/gms/internal/zzfhg;)V

    goto :goto_0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;)V
    .locals 2

    :try_start_0
    instance-of v0, p2, Lcom/google/android/gms/internal/zzfgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhi;->zzpob:Lcom/google/android/gms/internal/zzfhg;

    check-cast p2, Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfhg;->zzb(ILcom/google/android/gms/internal/zzfgs;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhi;->zzpob:Lcom/google/android/gms/internal/zzfhg;

    check-cast p2, Lcom/google/android/gms/internal/zzfjc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfhg;->zzb(ILcom/google/android/gms/internal/zzfjc;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzcyz()I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/zzfhu$zzg;->zzpqf:I

    return v0
.end method
