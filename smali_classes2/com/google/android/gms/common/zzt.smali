.class public Lcom/google/android/gms/common/zzt;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field private static zzfrx:Lcom/google/android/gms/common/zzt;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/zzt;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzh;)Lcom/google/android/gms/common/zzh;
    .locals 4
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const-string v0, "GoogleSignatureVerifier"

    const-string v2, "Package has more than one signature."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/common/zzi;

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzi;-><init>([B)V

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    aget-object v3, p1, v0

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/zzh;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v0, p1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static zza(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/google/android/gms/common/zzk;->zzfrh:[Lcom/google/android/gms/common/zzh;

    invoke-static {p0, v2}, Lcom/google/android/gms/common/zzt;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzh;)Lcom/google/android/gms/common/zzh;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    new-array v2, v0, [Lcom/google/android/gms/common/zzh;

    sget-object v3, Lcom/google/android/gms/common/zzk;->zzfrh:[Lcom/google/android/gms/common/zzh;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/google/android/gms/common/zzt;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzh;)Lcom/google/android/gms/common/zzh;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static zzcj(Landroid/content/Context;)Lcom/google/android/gms/common/zzt;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/google/android/gms/common/zzt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/zzt;->zzfrx:Lcom/google/android/gms/common/zzt;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/zzg;->zzch(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/common/zzt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzt;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/zzt;->zzfrx:Lcom/google/android/gms/common/zzt;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/zzt;->zzfrx:Lcom/google/android/gms/common/zzt;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzgh(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/zzt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbih;->zzdd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbig;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbig;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/zzt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/zzs;->zzci(Landroid/content/Context;)Z

    move-result v2

    if-nez v1, :cond_2

    const-string v0, "null pkg"

    invoke-static {v0}, Lcom/google/android/gms/common/zzp;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "no pkg "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/zzp;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const-string v0, "single cert required"

    invoke-static {v0}, Lcom/google/android/gms/common/zzp;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/google/android/gms/common/zzi;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/common/zzi;-><init>([B)V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/google/android/gms/common/zzg;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzh;Z)Lcom/google/android/gms/common/zzp;

    move-result-object v0

    iget-boolean v5, v0, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_4

    invoke-static {v4, v3, v6}, Lcom/google/android/gms/common/zzg;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzh;Z)Lcom/google/android/gms/common/zzp;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    if-eqz v1, :cond_0

    :cond_4
    const-string v0, "debuggable release cert app rejected"

    invoke-static {v0}, Lcom/google/android/gms/common/zzp;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final zza(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/zzt;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/gms/common/zzt;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/zzt;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/zzs;->zzci(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v1, "GoogleSignatureVerifier"

    const-string v2, "Test-keys aren\'t accepted on this build."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final zzbp(I)Z
    .locals 5
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/zzt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbih;->zzdd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbig;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "no pkgs"

    invoke-static {v0}, Lcom/google/android/gms/common/zzp;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;

    move-result-object v0

    :cond_1
    iget-boolean v1, v0, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/common/zzp;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    const-string v1, "GoogleCertificatesRslt"

    invoke-virtual {v0}, Lcom/google/android/gms/common/zzp;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/common/zzp;->cause:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    iget-boolean v0, v0, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    return v0

    :cond_3
    const/4 v0, 0x0

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/zzt;->zzgh(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;

    move-result-object v0

    iget-boolean v4, v0, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    if-nez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "GoogleCertificatesRslt"

    invoke-virtual {v0}, Lcom/google/android/gms/common/zzp;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
