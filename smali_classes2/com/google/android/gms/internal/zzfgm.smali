.class public abstract Lcom/google/android/gms/internal/zzfgm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfjl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/zzfjc;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzfjl",
        "<TMessageType;>;"
    }
.end annotation


# static fields
.field private static final zzpns:Lcom/google/android/gms/internal/zzfhm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfhm;->zzczf()Lcom/google/android/gms/internal/zzfhm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfgm;->zzpns:Lcom/google/android/gms/internal/zzfhm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfie;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzfgm;->zze(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfjc;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfjc;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/google/android/gms/internal/zzfgj;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzfgj;

    new-instance v2, Lcom/google/android/gms/internal/zzfkm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzfkm;-><init>(Lcom/google/android/gms/internal/zzfjc;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfkm;->zzdbz()Lcom/google/android/gms/internal/zzfie;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzfie;->zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object v0

    throw v0

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/zzfgl;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzfgl;

    new-instance v2, Lcom/google/android/gms/internal/zzfkm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzfkm;-><init>(Lcom/google/android/gms/internal/zzfjc;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzfkm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzfkm;-><init>(Lcom/google/android/gms/internal/zzfjc;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method
