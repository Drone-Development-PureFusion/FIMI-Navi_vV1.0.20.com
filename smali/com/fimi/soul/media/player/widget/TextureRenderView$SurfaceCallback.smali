.class final Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/soul/media/player/widget/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mHeight:I

.field private mIsFormatChanged:Z

.field private mOwnSurfaceTecture:Z

.field private mRenderCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWeakRenderView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fimi/soul/media/player/widget/TextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/fimi/soul/media/player/widget/TextureRenderView;)V
    .locals 1
    .param p1, "renderView"    # Lcom/fimi/soul/media/player/widget/TextureRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mOwnSurfaceTecture:Z

    .line 208
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 211
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method


# virtual methods
.method public addRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 219
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "surfaceHolder":Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 223
    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/soul/media/player/widget/TextureRenderView;

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2}, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/fimi/soul/media/player/widget/TextureRenderView;Landroid/graphics/SurfaceTexture;)V

    .line 225
    .restart local v0    # "surfaceHolder":Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
    :cond_0
    iget v1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;II)V

    .line 228
    :cond_1
    iget-boolean v1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_3

    .line 229
    if-nez v0, :cond_2

    .line 230
    new-instance v0, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/soul/media/player/widget/TextureRenderView;

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2}, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/fimi/soul/media/player/widget/TextureRenderView;Landroid/graphics/SurfaceTexture;)V

    .line 231
    .restart local v0    # "surfaceHolder":Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
    :cond_2
    const/4 v1, 0x0

    iget v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;III)V

    .line 233
    :cond_3
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 241
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 242
    iput-boolean v4, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 243
    iput v4, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 244
    iput v4, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 246
    new-instance v1, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/soul/media/player/widget/TextureRenderView;

    invoke-direct {v1, v2, p1}, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/fimi/soul/media/player/widget/TextureRenderView;Landroid/graphics/SurfaceTexture;)V

    .line 247
    .local v1, "surfaceHolder":Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    .line 248
    .local v0, "renderCallback":Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, v4, v4}, Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    .line 250
    .end local v0    # "renderCallback":Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 267
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 268
    iput-boolean v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 269
    iput v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 270
    iput v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 272
    new-instance v1, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/soul/media/player/widget/TextureRenderView;

    invoke-direct {v1, v2, p1}, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/fimi/soul/media/player/widget/TextureRenderView;Landroid/graphics/SurfaceTexture;)V

    .line 273
    .local v1, "surfaceHolder":Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    .line 274
    .local v0, "renderCallback":Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;
    invoke-interface {v0, v1}, Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 277
    .end local v0    # "renderCallback":Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;
    :cond_0
    iget-boolean v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mOwnSurfaceTecture:Z

    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 254
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 255
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 256
    iput p2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 257
    iput p3, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 259
    new-instance v1, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/soul/media/player/widget/TextureRenderView;

    invoke-direct {v1, v2, p1}, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/fimi/soul/media/player/widget/TextureRenderView;Landroid/graphics/SurfaceTexture;)V

    .line 260
    .local v1, "surfaceHolder":Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    .line 261
    .local v0, "renderCallback":Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p2, p3}, Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    .line 263
    .end local v0    # "renderCallback":Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 282
    return-void
.end method

.method public removeRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method public setOwnSurfaceTecture(Z)V
    .locals 0
    .param p1, "ownSurfaceTecture"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->mOwnSurfaceTecture:Z

    .line 216
    return-void
.end method
