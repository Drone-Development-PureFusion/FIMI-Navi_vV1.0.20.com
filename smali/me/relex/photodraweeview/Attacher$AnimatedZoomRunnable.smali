.class Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "Attacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/photodraweeview/Attacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lme/relex/photodraweeview/Attacher;


# direct methods
.method public constructor <init>(Lme/relex/photodraweeview/Attacher;FFFF)V
    .locals 2
    .param p2, "currentZoom"    # F
    .param p3, "targetZoom"    # F
    .param p4, "focalX"    # F
    .param p5, "focalY"    # F

    .prologue
    .line 441
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput p4, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mFocalX:F

    .line 443
    iput p5, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mFocalY:F

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mStartTime:J

    .line 445
    iput p2, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 446
    iput p3, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mZoomEnd:F

    .line 447
    return-void
.end method

.method private interpolate()F
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, v6

    iget-object v2, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v2}, Lme/relex/photodraweeview/Attacher;->access$200(Lme/relex/photodraweeview/Attacher;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 469
    .local v0, "t":F
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 470
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v1}, Lme/relex/photodraweeview/Attacher;->access$300(Lme/relex/photodraweeview/Attacher;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 471
    return v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 451
    iget-object v4, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v4}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v1

    .line 452
    .local v1, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-nez v1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->interpolate()F

    move-result v3

    .line 457
    .local v3, "t":F
    iget v4, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mZoomStart:F

    iget v5, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mZoomEnd:F

    iget v6, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mZoomStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float v2, v4, v5

    .line 458
    .local v2, "scale":F
    iget-object v4, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v4}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v4

    div-float v0, v2, v4

    .line 460
    .local v0, "deltaScale":F
    iget-object v4, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    iget v5, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mFocalX:F

    iget v6, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v4, v0, v5, v6}, Lme/relex/photodraweeview/Attacher;->onScale(FFF)V

    .line 462
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 463
    iget-object v4, p0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v4, v1, p0}, Lme/relex/photodraweeview/Attacher;->access$100(Lme/relex/photodraweeview/Attacher;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
