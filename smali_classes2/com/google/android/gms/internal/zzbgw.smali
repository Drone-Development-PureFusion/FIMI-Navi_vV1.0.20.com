.class final Lcom/google/android/gms/internal/zzbgw;
.super Lcom/google/android/gms/internal/zzbgz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbgv;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbgz;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbha;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbhd;

    new-instance v1, Lcom/google/android/gms/internal/zzbgx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbgx;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbhd;->zza(Lcom/google/android/gms/internal/zzbhb;)V

    return-void
.end method
