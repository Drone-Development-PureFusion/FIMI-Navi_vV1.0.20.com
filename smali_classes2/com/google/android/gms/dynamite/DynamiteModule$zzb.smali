.class final Lcom/google/android/gms/dynamite/DynamiteModule$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamite/DynamiteModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final zzhdq:I

.field private final zzhdr:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;->zzhdq:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;->zzhdr:I

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzx(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;->zzhdq:I

    return v0
.end method
