.class final enum Lcom/google/android/gms/internal/zzflf;
.super Lcom/google/android/gms/internal/zzfle;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzfle;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/zzfkx;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/zzfhb;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfhb;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
