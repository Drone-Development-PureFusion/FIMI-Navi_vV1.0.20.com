.class public Lcom/fimi/kernel/utils/MyBitmapMemoryCacheParamsSupplier;
.super Ljava/lang/Object;
.source "MyBitmapMemoryCacheParamsSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier",
        "<",
        "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CACHE_ASHM_ENTRIES:I = 0x80

.field private static final MAX_CACHE_ENTRIES:I = 0x38

.field private static final MAX_CACHE_EVICTION_ENTRIES:I = 0x5

.field private static final MAX_CACHE_EVICTION_SIZE:I = 0x5


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0
    .param p1, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/fimi/kernel/utils/MyBitmapMemoryCacheParamsSupplier;->mActivityManager:Landroid/app/ActivityManager;

    .line 23
    return-void
.end method

.method private getMaxCacheSize()I
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/fimi/kernel/utils/MyBitmapMemoryCacheParamsSupplier;->mActivityManager:Landroid/app/ActivityManager;

    .line 41
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    const/high16 v2, 0x100000

    mul-int/2addr v1, v2

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 42
    .local v0, "maxMemory":I
    const/high16 v1, 0x2000000

    if-ge v0, v1, :cond_0

    .line 43
    const/high16 v1, 0x400000

    .line 47
    :goto_0
    return v1

    .line 44
    :cond_0
    const/high16 v1, 0x4000000

    if-ge v0, v1, :cond_1

    .line 45
    const/high16 v1, 0x600000

    goto :goto_0

    .line 47
    :cond_1
    div-int/lit8 v1, v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public get()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    .locals 7

    .prologue
    const/4 v3, 0x5

    const v6, 0x7fffffff

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 28
    new-instance v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    invoke-direct {p0}, Lcom/fimi/kernel/utils/MyBitmapMemoryCacheParamsSupplier;->getMaxCacheSize()I

    move-result v1

    const/16 v2, 0x38

    const/4 v5, 0x1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;-><init>(IIIII)V

    .line 30
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    .line 31
    invoke-direct {p0}, Lcom/fimi/kernel/utils/MyBitmapMemoryCacheParamsSupplier;->getMaxCacheSize()I

    move-result v1

    const/16 v2, 0x80

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;-><init>(IIIII)V

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/fimi/kernel/utils/MyBitmapMemoryCacheParamsSupplier;->get()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    move-result-object v0

    return-object v0
.end method
