.class final Lcom/fimi/player/widget/TextureRenderView$InternalSurfaceHolder;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/player/widget/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalSurfaceHolder"
.end annotation


# instance fields
.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureView:Lcom/fimi/player/widget/TextureRenderView;


# direct methods
.method public constructor <init>(Lcom/fimi/player/widget/TextureRenderView;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "textureView"    # Lcom/fimi/player/widget/TextureRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/fimi/player/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/fimi/player/widget/TextureRenderView;

    .line 132
    iput-object p2, p0, Lcom/fimi/player/widget/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 133
    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Lcom/fimi/player/IMediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Lcom/fimi/player/IMediaPlayer;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 140
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    instance-of v2, p1, Lcom/fimi/player/ISurfaceTextureHolder;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 142
    check-cast v1, Lcom/fimi/player/ISurfaceTextureHolder;

    .line 143
    .local v1, "textureHolder":Lcom/fimi/player/ISurfaceTextureHolder;
    iget-object v2, p0, Lcom/fimi/player/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/fimi/player/widget/TextureRenderView;

    invoke-static {v2}, Lcom/fimi/player/widget/TextureRenderView;->access$100(Lcom/fimi/player/widget/TextureRenderView;)Lcom/fimi/player/widget/TextureRenderView$SurfaceCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/player/widget/TextureRenderView$SurfaceCallback;->setOwnSurfaceTecture(Z)V

    .line 145
    invoke-interface {v1}, Lcom/fimi/player/ISurfaceTextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 146
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v0, :cond_1

    .line 147
    iget-object v2, p0, Lcom/fimi/player/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/fimi/player/widget/TextureRenderView;

    invoke-virtual {v2, v0}, Lcom/fimi/player/widget/TextureRenderView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/fimi/player/widget/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Lcom/fimi/player/ISurfaceTextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 152
    .end local v0    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    .end local v1    # "textureHolder":Lcom/fimi/player/ISurfaceTextureHolder;
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/player/widget/TextureRenderView$InternalSurfaceHolder;->openSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/fimi/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public getRenderView()Lcom/fimi/player/widget/IRenderView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fimi/player/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/fimi/player/widget/TextureRenderView;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fimi/player/widget/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fimi/player/widget/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/fimi/player/widget/TextureRenderView$InternalSurfaceHolder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method
