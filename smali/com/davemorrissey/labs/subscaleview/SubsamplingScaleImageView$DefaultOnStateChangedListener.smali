.class public Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$DefaultOnStateChangedListener;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageView.java"

# interfaces
.implements Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultOnStateChangedListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCenterChanged(Landroid/graphics/PointF;I)V
    .locals 0
    .param p1, "newCenter"    # Landroid/graphics/PointF;
    .param p2, "origin"    # I

    .prologue
    .line 3195
    return-void
.end method

.method public onScaleChanged(FI)V
    .locals 0
    .param p1, "newScale"    # F
    .param p2, "origin"    # I

    .prologue
    .line 3196
    return-void
.end method
