.class public Lcom/fimi/kernel/utils/FrescoImageLoader;
.super Ljava/lang/Object;
.source "FrescoImageLoader.java"


# static fields
.field private static final IMAGE_PIPELINE_CACHE_DIR:Ljava/lang/String; = "imagepipeline_cache"

.field private static final MAX_DISK_CACHE_SIZE:I = 0x2800000

.field private static final MAX_HEAP_SIZE:I

.field private static final MAX_MEMORY_CACHE_SIZE:I

.field private static final MAX_POOL_SIZE:I = 0x2800000

.field private static final TAG:Ljava/lang/String; = "FrescoImageLoader"

.field private static sImagePipelineConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/fimi/kernel/utils/FrescoImageLoader;->MAX_HEAP_SIZE:I

    .line 37
    sget v0, Lcom/fimi/kernel/utils/FrescoImageLoader;->MAX_HEAP_SIZE:I

    sput v0, Lcom/fimi/kernel/utils/FrescoImageLoader;->MAX_MEMORY_CACHE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    .line 199
    .local v0, "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches()V

    .line 200
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearDiskCaches()V

    .line 201
    return-void
.end method

.method private static configureCaches(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Landroid/content/Context;)V
    .locals 7
    .param p0, "configBuilder"    # Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7fffffff

    .line 171
    new-instance v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    sget v1, Lcom/fimi/kernel/utils/FrescoImageLoader;->MAX_MEMORY_CACHE_SIZE:I

    sget v3, Lcom/fimi/kernel/utils/FrescoImageLoader;->MAX_MEMORY_CACHE_SIZE:I

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;-><init>(IIIII)V

    .line 177
    .local v0, "bitmapCacheParams":Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    new-instance v6, Lcom/fimi/kernel/utils/MyBitmapMemoryCacheParamsSupplier;

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-direct {v6, v1}, Lcom/fimi/kernel/utils/MyBitmapMemoryCacheParamsSupplier;-><init>(Landroid/app/ActivityManager;)V

    .line 178
    .local v6, "myBitmapMemoryCacheParamsSupplier":Lcom/fimi/kernel/utils/MyBitmapMemoryCacheParamsSupplier;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setDownsampleEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 179
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setBitmapsConfig(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v1, v6}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setBitmapMemoryCacheParamsSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v1

    .line 182
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;

    move-result-object v2

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->setBaseDirectoryPath(Ljava/io/File;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;

    move-result-object v2

    const-string v3, "imagepipeline_cache"

    .line 184
    invoke-virtual {v2, v3}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->setBaseDirectoryName(Ljava/lang/String;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;

    move-result-object v2

    const-wide/32 v4, 0x2800000

    .line 185
    invoke-virtual {v2, v4, v5}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->setMaxCacheSize(J)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->build()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v2

    .line 181
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setMainDiskCacheConfig(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 187
    return-void
.end method

.method private static configureLoggingListeners(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .locals 3
    .param p0, "configBuilder"    # Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .prologue
    .line 190
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/imagepipeline/listener/RequestListener;

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;-><init>()V

    aput-object v2, v0, v1

    .line 191
    invoke-static {v0}, Lcom/facebook/common/internal/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setRequestListeners(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 192
    return-void
.end method

.method public static display(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Lcom/facebook/drawee/view/SimpleDraweeView;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fimi/kernel/utils/FrescoImageLoader;->display(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/controller/ControllerListener;)V

    .line 42
    return-void
.end method

.method public static display(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V
    .locals 1
    .param p0, "view"    # Lcom/facebook/drawee/view/SimpleDraweeView;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/fimi/kernel/utils/FrescoImageLoader;->display(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;IILcom/facebook/drawee/controller/ControllerListener;)V

    .line 120
    return-void
.end method

.method public static display(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;IILcom/facebook/drawee/controller/ControllerListener;)V
    .locals 5
    .param p0, "view"    # Lcom/facebook/drawee/view/SimpleDraweeView;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "listener"    # Lcom/facebook/drawee/controller/ControllerListener;

    .prologue
    const/4 v4, 0x1

    .line 123
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 127
    .local v0, "controller":Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 129
    invoke-virtual {v0, v4}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 131
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    sget-object v3, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 132
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setCacheChoice(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setLocalThumbnailPreviewsEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    .line 134
    .local v1, "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    invoke-virtual {v1, v4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setProgressiveRenderingEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 135
    const-string v2, "Good"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 138
    new-instance v2, Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-direct {v2, p2, p3}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 140
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 141
    invoke-virtual {v0, p4}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 142
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    goto :goto_0
.end method

.method public static display(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/controller/ControllerListener;)V
    .locals 4
    .param p0, "view"    # Lcom/facebook/drawee/view/SimpleDraweeView;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/facebook/drawee/controller/ControllerListener;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string p1, ""

    .line 84
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 85
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setLocalThumbnailPreviewsEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 88
    .local v1, "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 90
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 91
    invoke-virtual {v2, p2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 92
    invoke-virtual {v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 93
    .local v0, "controller":Lcom/facebook/drawee/interfaces/DraweeController;
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 116
    return-void
.end method

.method public static display(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/drawee/controller/ControllerListener;)V
    .locals 7
    .param p0, "view"    # Lcom/facebook/drawee/view/SimpleDraweeView;
    .param p1, "lowUri"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/facebook/drawee/controller/ControllerListener;

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 78
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    .local v4, "w":I
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .local v1, "h":I
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 53
    .local v0, "controller":Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;
    const-string v5, "file:///"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 57
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setLowResImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 61
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 63
    const-string v5, ".MP4"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    .line 64
    .local v3, "isVideo":Z
    const/4 v2, 0x0

    .line 65
    .local v2, "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequestBuilder;
    if-eqz v3, :cond_4

    .line 67
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    .line 72
    :goto_1
    if-lez v4, :cond_3

    if-lez v1, :cond_3

    .line 73
    new-instance v5, Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-direct {v5, v4, v1}, Lcom/facebook/imagepipeline/common/ResizeOptions;-><init>(II)V

    invoke-virtual {v2, v5}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 75
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 76
    invoke-virtual {v0, p3}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 77
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    goto :goto_0

    .line 70
    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v2

    goto :goto_1
.end method

.method public static getImagePipelineConfig(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    sget-object v1, Lcom/fimi/kernel/utils/FrescoImageLoader;->sImagePipelineConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    if-nez v1, :cond_0

    .line 157
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v0

    .line 158
    .local v0, "configBuilder":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    invoke-static {v0, p0}, Lcom/fimi/kernel/utils/FrescoImageLoader;->configureCaches(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Landroid/content/Context;)V

    .line 159
    invoke-static {v0}, Lcom/fimi/kernel/utils/FrescoImageLoader;->configureLoggingListeners(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    .line 160
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object v1

    sput-object v1, Lcom/fimi/kernel/utils/FrescoImageLoader;->sImagePipelineConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 162
    .end local v0    # "configBuilder":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    :cond_0
    sget-object v1, Lcom/fimi/kernel/utils/FrescoImageLoader;->sImagePipelineConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    return-object v1
.end method

.method public static initFresco(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-static {p0}, Lcom/fimi/kernel/utils/FrescoImageLoader;->getImagePipelineConfig(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    .line 149
    return-void
.end method

.method public static shutdown()V
    .locals 0

    .prologue
    .line 152
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->shutDown()V

    .line 153
    return-void
.end method
