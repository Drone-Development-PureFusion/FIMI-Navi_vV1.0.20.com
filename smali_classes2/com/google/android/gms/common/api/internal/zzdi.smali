.class final Lcom/google/android/gms/common/api/internal/zzdi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzgbo:Lcom/google/android/gms/common/api/Result;

.field private synthetic zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzdh;Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbo:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzfvb:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzdh;->zzc(Lcom/google/android/gms/common/api/internal/zzdh;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbo:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzdh;->zzd(Lcom/google/android/gms/common/api/internal/zzdh;)Lcom/google/android/gms/common/api/internal/zzdj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzdh;->zzd(Lcom/google/android/gms/common/api/internal/zzdh;)Lcom/google/android/gms/common/api/internal/zzdj;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/zzdj;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zzdj;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzfvb:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbo:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzdh;->zza(Lcom/google/android/gms/common/api/internal/zzdh;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzdh;->zze(Lcom/google/android/gms/common/api/internal/zzdh;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzdh;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzdh;->zzd(Lcom/google/android/gms/common/api/internal/zzdh;)Lcom/google/android/gms/common/api/internal/zzdj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzdh;->zzd(Lcom/google/android/gms/common/api/internal/zzdh;)Lcom/google/android/gms/common/api/internal/zzdj;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/zzdj;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zzdj;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzfvb:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbo:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzdh;->zza(Lcom/google/android/gms/common/api/internal/zzdh;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzdh;->zze(Lcom/google/android/gms/common/api/internal/zzdh;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzdh;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzfvb:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbo:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/zzdh;->zza(Lcom/google/android/gms/common/api/internal/zzdh;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzdh;->zze(Lcom/google/android/gms/common/api/internal/zzdh;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzdi;->zzgbp:Lcom/google/android/gms/common/api/internal/zzdh;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzdh;)V

    :cond_1
    throw v1
.end method
