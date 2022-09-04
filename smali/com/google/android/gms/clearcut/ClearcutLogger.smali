.class public final Lcom/google/android/gms/clearcut/ClearcutLogger;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;,
        Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;,
        Lcom/google/android/gms/clearcut/ClearcutLogger$zza;,
        Lcom/google/android/gms/clearcut/ClearcutLogger$zzb;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static zzegu:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzbfn;",
            ">;"
        }
    .end annotation
.end field

.field private static zzegv:Lcom/google/android/gms/common/api/Api$zza;
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzbfn;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfoz:[Lcom/google/android/gms/phenotype/ExperimentTokens;

.field private static final zzfpa:[Ljava/lang/String;

.field private static final zzfpb:[[B


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzdir:Lcom/google/android/gms/common/util/zze;

.field private final zzfpc:I

.field private zzfpd:Ljava/lang/String;

.field private zzfpe:I

.field private zzfpf:Ljava/lang/String;

.field private zzfpg:Ljava/lang/String;

.field private final zzfph:Z

.field private zzfpi:I

.field private final zzfpj:Lcom/google/android/gms/clearcut/zzb;

.field private zzfpk:Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;

.field private final zzfpl:Lcom/google/android/gms/clearcut/ClearcutLogger$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/clearcut/zza;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzegv:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzegv:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->API:Lcom/google/android/gms/common/api/Api;

    new-array v0, v4, [Lcom/google/android/gms/phenotype/ExperimentTokens;

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfoz:[Lcom/google/android/gms/phenotype/ExperimentTokens;

    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpa:[Ljava/lang/String;

    new-array v0, v4, [[B

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpb:[[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/zzb;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;Lcom/google/android/gms/clearcut/ClearcutLogger$zza;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpe:I

    iput v2, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpi:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzca(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpc:I

    iput v1, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpe:I

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpd:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpf:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpg:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfph:Z

    iput-object p7, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpj:Lcom/google/android/gms/clearcut/zzb;

    iput-object p8, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzdir:Lcom/google/android/gms/common/util/zze;

    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpk:Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;

    iput v2, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpi:I

    iput-object p10, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpl:Lcom/google/android/gms/clearcut/ClearcutLogger$zza;

    const-string v0, "can\'t be anonymous with an upload account"

    invoke-static {v3, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public static anonymousLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger;
    .locals 11
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger;

    const/4 v2, -0x1

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbfi;->zzcb(Landroid/content/Context;)Lcom/google/android/gms/clearcut/zzb;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzanq()Lcom/google/android/gms/common/util/zze;

    move-result-object v8

    new-instance v10, Lcom/google/android/gms/internal/zzbft;

    invoke-direct {v10, p0}, Lcom/google/android/gms/internal/zzbft;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v3, p1

    move-object v5, v4

    move-object v9, v4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/clearcut/ClearcutLogger;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/zzb;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;Lcom/google/android/gms/clearcut/ClearcutLogger$zza;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/clearcut/ClearcutLogger;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpe:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpd:Ljava/lang/String;

    return-object v0
.end method

.method private static zzb(Ljava/util/ArrayList;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v0

    move v3, v0

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v0, v3, 0x1

    aput v5, v1, v3

    move v3, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic zzc(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzdir:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method static synthetic zzc(Ljava/util/ArrayList;)[I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzb(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method private static zzca(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "ClearcutLogger"

    const-string v3, "This can\'t happen."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic zzd(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpk:Lcom/google/android/gms/clearcut/ClearcutLogger$zzc;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/clearcut/ClearcutLogger;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfph:Z

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/clearcut/ClearcutLogger;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpc:I

    return v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/clearcut/ClearcutLogger$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpl:Lcom/google/android/gms/clearcut/ClearcutLogger$zza;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/clearcut/zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->zzfpj:Lcom/google/android/gms/clearcut/zzb;

    return-object v0
.end method


# virtual methods
.method public final newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/zza;)V

    return-object v0
.end method
