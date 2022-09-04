.class public final Lcom/google/android/gms/internal/zzflv;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static zzpvu:I

.field private static zzpvv:I

.field private static zzpvw:I

.field private static zzpvx:I

.field public static final zzpvy:[I

.field public static final zzpvz:[J

.field public static final zzpwa:[F

.field public static final zzpwb:[D

.field public static final zzpwc:[Z

.field public static final zzpwd:[[B

.field public static final zzpwe:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xb

    sput v0, Lcom/google/android/gms/internal/zzflv;->zzpvu:I

    const/16 v0, 0xc

    sput v0, Lcom/google/android/gms/internal/zzflv;->zzpvv:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/internal/zzflv;->zzpvw:I

    const/16 v0, 0x1a

    sput v0, Lcom/google/android/gms/internal/zzflv;->zzpvx:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zzflv;->zzpvy:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zzflv;->zzpvz:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwa:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwb:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwc:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzflv;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwd:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/zzflj;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzflj;->zzlg(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzflj;->zzlg(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzflj;->zzap(II)V

    return v0
.end method
