.class public Lcom/google/android/gms/maps/model/Cap;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/maps/model/Cap;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final type:I

.field private final zzjcv:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/maps/model/Cap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/model/Cap;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/maps/model/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/Cap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILcom/google/android/gms/maps/model/BitmapDescriptor;Ljava/lang/Float;)V

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Ljava/lang/Float;)V
    .locals 2
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILcom/google/android/gms/maps/model/BitmapDescriptor;Ljava/lang/Float;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_0
.end method

.method private constructor <init>(ILcom/google/android/gms/maps/model/BitmapDescriptor;Ljava/lang/Float;)V
    .locals 6
    .param p2    # Lcom/google/android/gms/maps/model/BitmapDescriptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    move v0, v2

    :goto_0
    if-ne p1, v4, :cond_0

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_1
    const-string v3, "Invalid Cap: type=%s bitmapDescriptor=%s bitmapRefWidth=%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p2, v4, v2

    const/4 v1, 0x2

    aput-object p3, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/Cap;->zzjcv:Ljava/lang/Float;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected constructor <init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;F)V
    .locals 2
    .param p1    # Lcom/google/android/gms/maps/model/BitmapDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    const/4 v0, 0x3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILcom/google/android/gms/maps/model/BitmapDescriptor;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/maps/model/Cap;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/maps/model/Cap;

    iget v2, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    iget v3, p1, Lcom/google/android/gms/maps/model/Cap;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->zzjcv:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/Cap;->zzjcv:Ljava/lang/Float;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->zzjcv:Ljava/lang/Float;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[Cap: type="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x2

    iget v2, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->zzjcv:Ljava/lang/Float;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzaxq()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method final zzaxw()Lcom/google/android/gms/maps/model/Cap;
    .locals 4
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/maps/model/Cap;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown Cap type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/google/android/gms/maps/model/SquareCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/SquareCap;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/maps/model/CustomCap;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->zzjcv:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/CustomCap;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;F)V

    move-object p0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
