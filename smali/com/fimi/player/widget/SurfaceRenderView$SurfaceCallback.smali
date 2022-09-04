.class final Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/player/widget/SurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mFormat:I

.field private mHeight:I

.field private mIsFormatChanged:Z

.field private mRenderCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fimi/player/widget/IRenderView$IRenderCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWeakSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fimi/player/widget/SurfaceRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/fimi/player/widget/SurfaceRenderView;)V
    .locals 1
    .param p1, "surfaceView"    # Lcom/fimi/player/widget/SurfaceRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    .line 193
    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/fimi/player/widget/IRenderView$IRenderCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/fimi/player/widget/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 196
    iget-object v1, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "surfaceHolder":Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 200
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/fimi/player/widget/SurfaceRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/player/widget/SurfaceRenderView;

    iget-object v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, v1, v2}, Lcom/fimi/player/widget/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/fimi/player/widget/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 202
    .restart local v0    # "surfaceHolder":Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
    :cond_0
    iget v1, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lcom/fimi/player/widget/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;II)V

    .line 205
    :cond_1
    iget-boolean v1, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_3

    .line 206
    if-nez v0, :cond_2

    .line 207
    new-instance v0, Lcom/fimi/player/widget/SurfaceRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/player/widget/SurfaceRenderView;

    iget-object v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, v1, v2}, Lcom/fimi/player/widget/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/fimi/player/widget/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 208
    .restart local v0    # "surfaceHolder":Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
    :cond_2
    iget v1, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mFormat:I

    iget v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/fimi/player/widget/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;III)V

    .line 210
    :cond_3
    return-void
.end method

.method public removeRenderCallback(Lcom/fimi/player/widget/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/player/widget/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 247
    iput-object p1, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 248
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 249
    iput p2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 250
    iput p3, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 251
    iput p4, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 255
    new-instance v1, Lcom/fimi/player/widget/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/player/widget/SurfaceRenderView;

    iget-object v3, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Lcom/fimi/player/widget/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/fimi/player/widget/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 256
    .local v1, "surfaceHolder":Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    check-cast v0, Lcom/fimi/player/widget/IRenderView$IRenderCallback;

    .line 257
    .local v0, "renderCallback":Lcom/fimi/player/widget/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/fimi/player/widget/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    .line 259
    .end local v0    # "renderCallback":Lcom/fimi/player/widget/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x0

    .line 218
    iput-object p1, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 219
    iput-boolean v4, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 220
    iput v4, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 221
    iput v4, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 222
    iput v4, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 224
    new-instance v1, Lcom/fimi/player/widget/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/player/widget/SurfaceRenderView;

    iget-object v3, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Lcom/fimi/player/widget/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/fimi/player/widget/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 225
    .local v1, "surfaceHolder":Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    check-cast v0, Lcom/fimi/player/widget/IRenderView$IRenderCallback;

    .line 226
    .local v0, "renderCallback":Lcom/fimi/player/widget/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, v4, v4}, Lcom/fimi/player/widget/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    .line 228
    .end local v0    # "renderCallback":Lcom/fimi/player/widget/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x0

    .line 232
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 233
    iput-boolean v3, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 234
    iput v3, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 235
    iput v3, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 236
    iput v3, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 238
    new-instance v1, Lcom/fimi/player/widget/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/player/widget/SurfaceRenderView;

    iget-object v3, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Lcom/fimi/player/widget/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/fimi/player/widget/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 239
    .local v1, "surfaceHolder":Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Lcom/fimi/player/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    check-cast v0, Lcom/fimi/player/widget/IRenderView$IRenderCallback;

    .line 240
    .local v0, "renderCallback":Lcom/fimi/player/widget/IRenderView$IRenderCallback;
    invoke-interface {v0, v1}, Lcom/fimi/player/widget/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 242
    .end local v0    # "renderCallback":Lcom/fimi/player/widget/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method
