.class Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;
.super Ljava/lang/Object;
.source "FimiH264Video.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/media/FimiH264Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/media/FimiH264Video;


# direct methods
.method private constructor <init>(Lcom/fimi/app/x8s/media/FimiH264Video;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;->this$0:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/app/x8s/media/FimiH264Video;Lcom/fimi/app/x8s/media/FimiH264Video$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/app/x8s/media/FimiH264Video;
    .param p2, "x1"    # Lcom/fimi/app/x8s/media/FimiH264Video$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;-><init>(Lcom/fimi/app/x8s/media/FimiH264Video;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 187
    const-string v0, "istep"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".....surfaceCreated......."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;->this$0:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-static {v0, p1}, Lcom/fimi/app/x8s/media/FimiH264Video;->access$100(Lcom/fimi/app/x8s/media/FimiH264Video;Landroid/graphics/SurfaceTexture;)V

    .line 189
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 198
    const-string v0, "istep"

    const-string v1, ".....surfaceDestroyed......."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;->this$0:Lcom/fimi/app/x8s/media/FimiH264Video;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/media/FimiH264Video;->access$200(Lcom/fimi/app/x8s/media/FimiH264Video;Z)V

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 194
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 206
    return-void
.end method
