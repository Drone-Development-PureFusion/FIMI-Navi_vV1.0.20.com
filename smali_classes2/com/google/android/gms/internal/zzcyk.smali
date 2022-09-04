.class public final Lcom/google/android/gms/internal/zzcyk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# static fields
.field public static final zzklp:Lcom/google/android/gms/internal/zzcyk;


# instance fields
.field private final zzela:Z

.field private final zzelb:Ljava/lang/String;

.field private final zzenc:Z

.field private final zzend:Ljava/lang/String;

.field private final zzklq:Z

.field private final zzklr:Z

.field private final zzkls:Ljava/lang/Long;

.field private final zzklt:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzcyl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcyl;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcyk;

    move v2, v1

    move v4, v1

    move-object v5, v3

    move v6, v1

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzcyk;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/google/android/gms/internal/zzcyk;->zzklp:Lcom/google/android/gms/internal/zzcyk;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzklq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzela:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcyk;->zzelb:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzenc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzklr:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcyk;->zzend:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcyk;->zzkls:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcyk;->zzklt:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getServerClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzelb:Ljava/lang/String;

    return-object v0
.end method

.method public final isIdTokenRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzela:Z

    return v0
.end method

.method public final zzbeu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzklq:Z

    return v0
.end method

.method public final zzbev()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzenc:Z

    return v0
.end method

.method public final zzbew()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzend:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzklr:Z

    return v0
.end method

.method public final zzbey()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzkls:Ljava/lang/Long;

    return-object v0
.end method

.method public final zzbez()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzklt:Ljava/lang/Long;

    return-object v0
.end method
