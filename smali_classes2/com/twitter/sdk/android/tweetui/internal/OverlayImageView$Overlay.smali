.class public Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;
.super Ljava/lang/Object;
.source "OverlayImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Overlay"
.end annotation


# instance fields
.field final drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    .line 101
    return-void
.end method


# virtual methods
.method protected cleanupDrawable(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 106
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected setDrawableBounds(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    :cond_0
    return-void
.end method

.method protected setDrawableState([I)V
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/OverlayImageView$Overlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 120
    :cond_0
    return-void
.end method
