.class public Lme/relex/photodraweeview/DefaultOnDoubleTapListener;
.super Ljava/lang/Object;
.source "DefaultOnDoubleTapListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field protected mAttacher:Lme/relex/photodraweeview/Attacher;


# direct methods
.method public constructor <init>(Lme/relex/photodraweeview/Attacher;)V
    .locals 0
    .param p1, "attacher"    # Lme/relex/photodraweeview/Attacher;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->setPhotoDraweeViewAttacher(Lme/relex/photodraweeview/Attacher;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 50
    iget-object v4, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    if-nez v4, :cond_0

    .line 51
    const/4 v3, 0x0

    .line 70
    :goto_0
    return v3

    .line 55
    :cond_0
    :try_start_0
    iget-object v4, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v4}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v0

    .line 56
    .local v0, "scale":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 57
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 60
    .local v2, "y":F
    iget-object v4, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v4}, Lme/relex/photodraweeview/Attacher;->getMediumScale()F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 61
    iget-object v4, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    iget-object v5, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v5}, Lme/relex/photodraweeview/Attacher;->getMediumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v2, v6}, Lme/relex/photodraweeview/Attacher;->setScale(FFFZ)V

    goto :goto_0

    .line 67
    .end local v0    # "scale":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :catch_0
    move-exception v4

    goto :goto_0

    .line 62
    .restart local v0    # "scale":F
    .restart local v1    # "x":F
    .restart local v2    # "y":F
    :cond_1
    iget-object v4, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v4}, Lme/relex/photodraweeview/Attacher;->getMediumScale()F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v4}, Lme/relex/photodraweeview/Attacher;->getMaximumScale()F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    .line 63
    iget-object v4, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    iget-object v5, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v5}, Lme/relex/photodraweeview/Attacher;->getMaximumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v2, v6}, Lme/relex/photodraweeview/Attacher;->setScale(FFFZ)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v4, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    iget-object v5, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v5}, Lme/relex/photodraweeview/Attacher;->getMinimumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v2, v6}, Lme/relex/photodraweeview/Attacher;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 19
    iget-object v8, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    if-nez v8, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v6

    .line 22
    :cond_1
    iget-object v8, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v8}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v1

    .line 23
    .local v1, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-eqz v1, :cond_0

    .line 27
    iget-object v8, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v8}, Lme/relex/photodraweeview/Attacher;->getOnPhotoTapListener()Lme/relex/photodraweeview/OnPhotoTapListener;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 28
    iget-object v8, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v8}, Lme/relex/photodraweeview/Attacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 30
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 32
    .local v4, "y":F
    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 33
    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v2, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float v3, v6, v8

    .line 34
    .local v3, "xResult":F
    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float v6, v4, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float v5, v6, v8

    .line 35
    .local v5, "yResult":F
    iget-object v6, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v6}, Lme/relex/photodraweeview/Attacher;->getOnPhotoTapListener()Lme/relex/photodraweeview/OnPhotoTapListener;

    move-result-object v6

    invoke-interface {v6, v1, v3, v5}, Lme/relex/photodraweeview/OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    move v6, v7

    .line 36
    goto :goto_0

    .line 41
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    .end local v2    # "x":F
    .end local v3    # "xResult":F
    .end local v4    # "y":F
    .end local v5    # "yResult":F
    :cond_2
    iget-object v8, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v8}, Lme/relex/photodraweeview/Attacher;->getOnViewTapListener()Lme/relex/photodraweeview/OnViewTapListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 42
    iget-object v6, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v6}, Lme/relex/photodraweeview/Attacher;->getOnViewTapListener()Lme/relex/photodraweeview/OnViewTapListener;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-interface {v6, v1, v8, v9}, Lme/relex/photodraweeview/OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    move v6, v7

    .line 43
    goto :goto_0
.end method

.method public setPhotoDraweeViewAttacher(Lme/relex/photodraweeview/Attacher;)V
    .locals 0
    .param p1, "attacher"    # Lme/relex/photodraweeview/Attacher;

    .prologue
    .line 78
    iput-object p1, p0, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;->mAttacher:Lme/relex/photodraweeview/Attacher;

    .line 79
    return-void
.end method
