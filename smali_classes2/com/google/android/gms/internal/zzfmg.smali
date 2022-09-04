.class public final Lcom/google/android/gms/internal/zzfmg;
.super Lcom/google/android/gms/internal/zzfhu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfje;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfmg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfhu",
        "<",
        "Lcom/google/android/gms/internal/zzfmg;",
        "Lcom/google/android/gms/internal/zzfmg$zza;",
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
            "Lcom/google/android/gms/internal/zzfmg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpxv:Lcom/google/android/gms/internal/zzfmg;


# instance fields
.field private zzmjb:I

.field private zzpxs:I

.field private zzpxt:Ljava/lang/String;

.field private zzpxu:Lcom/google/android/gms/internal/zzfid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfid",
            "<",
            "Lcom/google/android/gms/internal/zzfgp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzfmg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfmg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppw:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfko;->zzbkr()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzfmg;->zzczs()Lcom/google/android/gms/internal/zzfid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    return-void
.end method

.method public static zzdcu()Lcom/google/android/gms/internal/zzfmg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    return-object v0
.end method

.method static synthetic zzdcv()Lcom/google/android/gms/internal/zzfmg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v3, Lcom/google/android/gms/internal/zzfmh;->zzbbk:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/zzfmg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfmg;-><init>()V

    :cond_0
    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzfid;->zzbkr()V

    move-object p0, v0

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/zzfmg$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfmg$zza;-><init>(Lcom/google/android/gms/internal/zzfmh;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/google/android/gms/internal/zzfhu$zzh;

    check-cast p3, Lcom/google/android/gms/internal/zzfmg;

    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    iget v3, p3, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    iget v5, p3, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    invoke-interface {p2, v0, v4, v3, v5}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_4
    iget-object v2, p3, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-interface {p2, v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(Lcom/google/android/gms/internal/zzfid;Lcom/google/android/gms/internal/zzfid;)Lcom/google/android/gms/internal/zzfid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    sget-object v0, Lcom/google/android/gms/internal/zzfhu$zzf;->zzppq:Lcom/google/android/gms/internal/zzfhu$zzf;

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzmjb:I

    iget v1, p3, Lcom/google/android/gms/internal/zzfmg;->zzmjb:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzmjb:I

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzfhb;

    check-cast p3, Lcom/google/android/gms/internal/zzfhm;

    if-nez p3, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :sswitch_0
    move v2, v1

    :cond_5
    :goto_5
    if-nez v2, :cond_8

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zzcxx()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILcom/google/android/gms/internal/zzfhb;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_6
    move v2, v0

    goto :goto_5

    :sswitch_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zzcya()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

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

    :sswitch_2
    :try_start_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zzcye()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

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

    :sswitch_3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfid;->zzcxk()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzfid;->size()I

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0xa

    :goto_7
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzfid;->zzmo(I)Lcom/google/android/gms/internal/zzfid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-static {}, Lcom/google/android/gms/internal/zzfgp;->zzcxo()Lcom/google/android/gms/internal/zzfgp;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/zzfhb;->zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfgp;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzfid;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :cond_7
    shl-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/zzfmg;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    if-nez v0, :cond_a

    const-class v1, Lcom/google/android/gms/internal/zzfmg;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/zzfmg;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/zzfhu$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzfhu$zzb;-><init>(Lcom/google/android/gms/internal/zzfhu;)V

    sput-object v0, Lcom/google/android/gms/internal/zzfmg;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    :cond_9
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_a
    sget-object p0, Lcom/google/android/gms/internal/zzfmg;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :pswitch_8
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_9
    move-object p0, v0

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_6

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
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfhg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfhg;->zzad(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfhg;->zzp(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfid;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfid;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfjc;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzfhg;->zza(ILcom/google/android/gms/internal/zzfjc;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfko;->zza(Lcom/google/android/gms/internal/zzfhg;)V

    return-void
.end method

.method public final zzhs()I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzppi:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzfhg;->zzag(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzfhg;->zzq(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfid;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfid;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfjc;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzfhg;->zzc(ILcom/google/android/gms/internal/zzfjc;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfko;->zzhs()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzppi:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
