.class public final Lcom/google/android/gms/internal/zzcfw;
.super Lcom/google/android/gms/internal/zzbgl;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzcfw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzitp:I

.field private zzitq:Lcom/google/android/gms/internal/zzcfu;

.field private zzitr:Lcom/google/android/gms/location/zzr;

.field private zzits:Lcom/google/android/gms/internal/zzcgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcfx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcfx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcfw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzcfu;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcfw;->zzitp:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcfw;->zzitq:Lcom/google/android/gms/internal/zzcfu;

    if-nez p3, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzcfw;->zzitr:Lcom/google/android/gms/location/zzr;

    if-nez p4, :cond_2

    :cond_0
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/zzcfw;->zzits:Lcom/google/android/gms/internal/zzcgr;

    return-void

    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/location/zzs;->zzbd(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzr;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_0

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcgr;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/zzcgr;

    move-object v1, v0

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/zzcgt;

    invoke-direct {v1, p4}, Lcom/google/android/gms/internal/zzcgt;-><init>(Landroid/os/IBinder;)V

    goto :goto_1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v2

    const/4 v0, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/zzcfw;->zzitp:I

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcfw;->zzitq:Lcom/google/android/gms/internal/zzcfu;

    invoke-static {p1, v0, v3, p2, v4}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfw;->zzitr:Lcom/google/android/gms/location/zzr;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcfw;->zzits:Lcom/google/android/gms/internal/zzcgr;

    if-nez v3, :cond_1

    :goto_1
    invoke-static {p1, v0, v1, v4}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfw;->zzitr:Lcom/google/android/gms/location/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/location/zzr;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfw;->zzits:Lcom/google/android/gms/internal/zzcgr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcgr;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1
.end method
