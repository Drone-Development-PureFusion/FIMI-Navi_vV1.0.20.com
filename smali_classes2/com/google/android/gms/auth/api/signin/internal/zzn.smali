.class public final Lcom/google/android/gms/auth/api/signin/internal/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/auth/api/signin/internal/zzo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgm;->zzd(Landroid/os/Parcel;)I

    move-result v4

    const/4 v0, 0x0

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v4, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v5, 0xffff

    and-int/2addr v5, v2

    packed-switch v5, :pswitch_data_0

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbgm;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbgm;->zzg(Landroid/os/Parcel;I)I

    move-result v2

    move v3, v2

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbgm;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbgm;->zzs(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/zzbgm;->zzaf(Landroid/os/Parcel;I)V

    new-instance v2, Lcom/google/android/gms/auth/api/signin/internal/zzo;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;-><init>(IILandroid/os/Bundle;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/auth/api/signin/internal/zzo;

    return-object v0
.end method
