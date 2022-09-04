.class public final Lcom/google/android/gms/internal/zzfhw;
.super Lcom/google/android/gms/internal/zzfhu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfje;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfhw$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfhu",
        "<",
        "Lcom/google/android/gms/internal/zzfhw;",
        "Lcom/google/android/gms/internal/zzfhw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfje;"
    }
.end annotation


# static fields
.field private static volatile zzbbm:Lcom/google/android/gms/internal/zzfjl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfjl",
            "<",
            "Lcom/google/android/gms/internal/zzfhw;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpqj:Lcom/google/android/gms/internal/zzfhw;


# instance fields
.field private zzpqi:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzfhw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfhw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfhw;->zzpqj:Lcom/google/android/gms/internal/zzfhw;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppw:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfko;->zzbkr()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhu;-><init>()V

    return-void
.end method

.method private final setValue(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfhw;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfhw;->setValue(I)V

    return-void
.end method

.method public static zzdaa()Lcom/google/android/gms/internal/zzfhw$zza;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzfhw;->zzpqj:Lcom/google/android/gms/internal/zzfhw;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppy:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzfhw$zza;

    return-object v0
.end method

.method public static zzdab()Lcom/google/android/gms/internal/zzfhw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfhw;->zzpqj:Lcom/google/android/gms/internal/zzfhw;

    return-object v0
.end method

.method static synthetic zzdac()Lcom/google/android/gms/internal/zzfhw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfhw;->zzpqj:Lcom/google/android/gms/internal/zzfhw;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v3, Lcom/google/android/gms/internal/zzfhx;->zzbbk:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/zzfhw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhw;-><init>()V

    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzfhw;->zzpqj:Lcom/google/android/gms/internal/zzfhw;

    goto :goto_0

    :pswitch_2
    move-object p0, v0

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/zzfhw$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfhw$zza;-><init>(Lcom/google/android/gms/internal/zzfhx;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/google/android/gms/internal/zzfhu$zzh;

    check-cast p3, Lcom/google/android/gms/internal/zzfhw;

    iget v0, p0, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I

    iget v4, p3, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I

    if-eqz v4, :cond_1

    :goto_2
    iget v2, p3, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I

    invoke-interface {p2, v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzfhb;

    check-cast p3, Lcom/google/android/gms/internal/zzfhm;

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    move v0, v2

    :cond_3
    :goto_3
    if-nez v0, :cond_6

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zzcxx()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    and-int/lit8 v4, v3, 0x7

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    move v3, v2

    :goto_4
    if-nez v3, :cond_3

    move v0, v1

    goto :goto_3

    :sswitch_0
    move v0, v1

    goto :goto_3

    :sswitch_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zzcya()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfie;->zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-static {}, Lcom/google/android/gms/internal/zzfko;->zzdca()Lcom/google/android/gms/internal/zzfko;

    move-result-object v5

    if-ne v4, v5, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzfko;->zzdcb()Lcom/google/android/gms/internal/zzfko;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v4, v3, p2}, Lcom/google/android/gms/internal/zzfko;->zzb(ILcom/google/android/gms/internal/zzfhb;)Z
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Lcom/google/android/gms/internal/zzfie;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzfie;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzfie;->zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/zzfhw;->zzpqj:Lcom/google/android/gms/internal/zzfhw;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/zzfhw;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    if-nez v0, :cond_8

    const-class v1, Lcom/google/android/gms/internal/zzfhw;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/zzfhw;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/zzfhu$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzfhw;->zzpqj:Lcom/google/android/gms/internal/zzfhw;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzfhu$zzb;-><init>(Lcom/google/android/gms/internal/zzfhu;)V

    sput-object v0, Lcom/google/android/gms/internal/zzfhw;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    :cond_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    sget-object p0, Lcom/google/android/gms/internal/zzfhw;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :pswitch_8
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_9
    move-object p0, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfhg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfhg;->zzad(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhw;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfko;->zza(Lcom/google/android/gms/internal/zzfhg;)V

    return-void
.end method

.method public final zzhs()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzfhw;->zzppi:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzfhw;->zzpqi:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzfhg;->zzag(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfhw;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfko;->zzhs()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzfhw;->zzppi:I

    goto :goto_0
.end method
