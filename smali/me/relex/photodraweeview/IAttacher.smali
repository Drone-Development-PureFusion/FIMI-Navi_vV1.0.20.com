.class public interface abstract Lme/relex/photodraweeview/IAttacher;
.super Ljava/lang/Object;
.source "IAttacher.java"


# static fields
.field public static final DEFAULT_MAX_SCALE:F = 3.0f

.field public static final DEFAULT_MID_SCALE:F = 1.75f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f

.field public static final ZOOM_DURATION:J = 0xc8L


# virtual methods
.method public abstract getMaximumScale()F
.end method

.method public abstract getMediumScale()F
.end method

.method public abstract getMinimumScale()F
.end method

.method public abstract getOnPhotoTapListener()Lme/relex/photodraweeview/OnPhotoTapListener;
.end method

.method public abstract getOnViewTapListener()Lme/relex/photodraweeview/OnViewTapListener;
.end method

.method public abstract getScale()F
.end method

.method public abstract setAllowParentInterceptOnEdge(Z)V
.end method

.method public abstract setMaximumScale(F)V
.end method

.method public abstract setMediumScale(F)V
.end method

.method public abstract setMinimumScale(F)V
.end method

.method public abstract setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
.end method

.method public abstract setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
.end method

.method public abstract setOnPhotoTapListener(Lme/relex/photodraweeview/OnPhotoTapListener;)V
.end method

.method public abstract setOnScaleChangeListener(Lme/relex/photodraweeview/OnScaleChangeListener;)V
.end method

.method public abstract setOnViewTapListener(Lme/relex/photodraweeview/OnViewTapListener;)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setScale(F)V
.end method

.method public abstract setScale(FFFZ)V
.end method

.method public abstract setScale(FZ)V
.end method

.method public abstract setZoomTransitionDuration(J)V
.end method

.method public abstract update(II)V
.end method
