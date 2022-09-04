.class public Lme/relex/photodraweeview/PhotoDraweeView;
.super Lcom/facebook/drawee/view/SimpleDraweeView;
.source "PhotoDraweeView.java"

# interfaces
.implements Lme/relex/photodraweeview/IAttacher;


# instance fields
.field private mAttacher:Lme/relex/photodraweeview/Attacher;

.field private mEnableDraweeMatrix:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mEnableDraweeMatrix:Z

    .line 32
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mEnableDraweeMatrix:Z

    .line 37
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mEnableDraweeMatrix:Z

    .line 42
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hierarchy"    # Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mEnableDraweeMatrix:Z

    .line 27
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->init()V

    .line 28
    return-void
.end method

.method static synthetic access$002(Lme/relex/photodraweeview/PhotoDraweeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lme/relex/photodraweeview/PhotoDraweeView;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mEnableDraweeMatrix:Z

    return p1
.end method


# virtual methods
.method public getAttacher()Lme/relex/photodraweeview/Attacher;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Lme/relex/photodraweeview/OnPhotoTapListener;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getOnPhotoTapListener()Lme/relex/photodraweeview/OnPhotoTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Lme/relex/photodraweeview/OnViewTapListener;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getOnViewTapListener()Lme/relex/photodraweeview/OnViewTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Lme/relex/photodraweeview/Attacher;

    invoke-direct {v0, p0}, Lme/relex/photodraweeview/Attacher;-><init>(Lcom/facebook/drawee/view/DraweeView;)V

    iput-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    .line 49
    :cond_1
    return-void
.end method

.method public isEnableDraweeMatrix()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mEnableDraweeMatrix:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->init()V

    .line 70
    invoke-super {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->onAttachedToWindow()V

    .line 71
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->onDetachedFromWindow()V

    .line 75
    invoke-super {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->onDetachedFromWindow()V

    .line 76
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 61
    .local v0, "saveCount":I
    iget-boolean v1, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mEnableDraweeMatrix:Z

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v1}, Lme/relex/photodraweeview/Attacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 66
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/Attacher;->setAllowParentInterceptOnEdge(Z)V

    .line 128
    return-void
.end method

.method public setEnableDraweeMatrix(Z)V
    .locals 0
    .param p1, "enableDraweeMatrix"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mEnableDraweeMatrix:Z

    .line 168
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1
    .param p1, "maximumScale"    # F

    .prologue
    .line 99
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/Attacher;->setMaximumScale(F)V

    .line 100
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1
    .param p1, "mediumScale"    # F

    .prologue
    .line 95
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/Attacher;->setMediumScale(F)V

    .line 96
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1
    .param p1, "minimumScale"    # F

    .prologue
    .line 91
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/Attacher;->setMinimumScale(F)V

    .line 92
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 131
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/Attacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 132
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 139
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/Attacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 140
    return-void
.end method

.method public setOnPhotoTapListener(Lme/relex/photodraweeview/OnPhotoTapListener;)V
    .locals 1
    .param p1, "listener"    # Lme/relex/photodraweeview/OnPhotoTapListener;

    .prologue
    .line 143
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/Attacher;->setOnPhotoTapListener(Lme/relex/photodraweeview/OnPhotoTapListener;)V

    .line 144
    return-void
.end method

.method public setOnScaleChangeListener(Lme/relex/photodraweeview/OnScaleChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lme/relex/photodraweeview/OnScaleChangeListener;

    .prologue
    .line 135
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/Attacher;->setOnScaleChangeListener(Lme/relex/photodraweeview/OnScaleChangeListener;)V

    .line 136
    return-void
.end method

.method public setOnViewTapListener(Lme/relex/photodraweeview/OnViewTapListener;)V
    .locals 1
    .param p1, "listener"    # Lme/relex/photodraweeview/OnViewTapListener;

    .prologue
    .line 147
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/Attacher;->setOnViewTapListener(Lme/relex/photodraweeview/OnViewTapListener;)V

    .line 148
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/Attacher;->setOrientation(I)V

    .line 120
    return-void
.end method

.method public setPhotoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lme/relex/photodraweeview/PhotoDraweeView;->setPhotoUri(Landroid/net/Uri;Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method public setPhotoUri(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mEnableDraweeMatrix:Z

    .line 176
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    .line 177
    invoke-virtual {v1, p2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 178
    invoke-virtual {v1, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    .line 179
    invoke-virtual {p0}, Lme/relex/photodraweeview/PhotoDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    new-instance v2, Lme/relex/photodraweeview/PhotoDraweeView$1;

    invoke-direct {v2, p0}, Lme/relex/photodraweeview/PhotoDraweeView$1;-><init>(Lme/relex/photodraweeview/PhotoDraweeView;)V

    .line 180
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 209
    invoke-virtual {v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v0

    .line 210
    .local v0, "controller":Lcom/facebook/drawee/interfaces/DraweeController;
    invoke-virtual {p0, v0}, Lme/relex/photodraweeview/PhotoDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 211
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 107
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1}, Lme/relex/photodraweeview/Attacher;->setScale(F)V

    .line 108
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lme/relex/photodraweeview/Attacher;->setScale(FFFZ)V

    .line 116
    return-void
.end method

.method public setScale(FZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1, p2}, Lme/relex/photodraweeview/Attacher;->setScale(FZ)V

    .line 112
    return-void
.end method

.method public setZoomTransitionDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 123
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1, p2}, Lme/relex/photodraweeview/Attacher;->setZoomTransitionDuration(J)V

    .line 124
    return-void
.end method

.method public update(II)V
    .locals 1
    .param p1, "imageInfoWidth"    # I
    .param p2, "imageInfoHeight"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lme/relex/photodraweeview/PhotoDraweeView;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0, p1, p2}, Lme/relex/photodraweeview/Attacher;->update(II)V

    .line 160
    return-void
.end method
