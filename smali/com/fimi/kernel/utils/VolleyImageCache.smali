.class public Lcom/fimi/kernel/utils/VolleyImageCache;
.super Ljava/lang/Object;
.source "VolleyImageCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# static fields
.field private static mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mImageCache:Lcom/fimi/kernel/utils/VolleyImageCache;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-int v0, v2

    .line 50
    .local v0, "maxMemory":I
    div-int/lit8 v1, v0, 0x8

    .line 51
    .local v1, "maxSize":I
    new-instance v2, Lcom/fimi/kernel/utils/VolleyImageCache$1;

    invoke-direct {v2, p0, v1}, Lcom/fimi/kernel/utils/VolleyImageCache$1;-><init>(Lcom/fimi/kernel/utils/VolleyImageCache;I)V

    sput-object v2, Lcom/fimi/kernel/utils/VolleyImageCache;->mCache:Landroid/util/LruCache;

    .line 57
    return-void
.end method

.method public static getInstance()Lcom/fimi/kernel/utils/VolleyImageCache;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/fimi/kernel/utils/VolleyImageCache;->mImageCache:Lcom/fimi/kernel/utils/VolleyImageCache;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/fimi/kernel/utils/VolleyImageCache;

    invoke-direct {v0}, Lcom/fimi/kernel/utils/VolleyImageCache;-><init>()V

    sput-object v0, Lcom/fimi/kernel/utils/VolleyImageCache;->mImageCache:Lcom/fimi/kernel/utils/VolleyImageCache;

    .line 68
    :cond_0
    sget-object v0, Lcom/fimi/kernel/utils/VolleyImageCache;->mImageCache:Lcom/fimi/kernel/utils/VolleyImageCache;

    return-object v0
.end method


# virtual methods
.method public clearBitmap()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/fimi/kernel/utils/VolleyImageCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 102
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v0, Lcom/fimi/kernel/utils/VolleyImageCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCacheKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    sget-object v0, Lcom/fimi/kernel/utils/VolleyImageCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public removeBitmap(Ljava/lang/String;II)V
    .locals 2
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 82
    sget-object v0, Lcom/fimi/kernel/utils/VolleyImageCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/kernel/utils/VolleyImageCache;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method
