.class Lcom/google/android/gms/internal/zzfkf;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic zzpss:Lcom/google/android/gms/internal/zzfjy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzfjy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfkf;->zzpss:Lcom/google/android/gms/internal/zzfjy;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfjy;Lcom/google/android/gms/internal/zzfjz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfkf;-><init>(Lcom/google/android/gms/internal/zzfjy;)V

    return-void
.end method


# virtual methods
.method public synthetic add(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfkf;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkf;->zzpss:Lcom/google/android/gms/internal/zzfjy;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzfjy;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkf;->zzpss:Lcom/google/android/gms/internal/zzfjy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfjy;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkf;->zzpss:Lcom/google/android/gms/internal/zzfjy;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfjy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzfke;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkf;->zzpss:Lcom/google/android/gms/internal/zzfjy;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzfke;-><init>(Lcom/google/android/gms/internal/zzfjy;Lcom/google/android/gms/internal/zzfjz;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfkf;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkf;->zzpss:Lcom/google/android/gms/internal/zzfjy;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfjy;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkf;->zzpss:Lcom/google/android/gms/internal/zzfjy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfjy;->size()I

    move-result v0

    return v0
.end method
