.class public Lcom/fimi/soul/media/player/widget/TextureRenderView;
.super Landroid/view/TextureView;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/fimi/soul/media/player/widget/IRenderView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;,
        Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;
    }
.end annotation


# instance fields
.field private mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

.field private mSurfaceCallback:Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->initView(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/soul/media/player/widget/TextureRenderView;)Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/TextureRenderView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mSurfaceCallback:Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v0, Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    .line 66
    new-instance v0, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;-><init>(Lcom/fimi/soul/media/player/widget/TextureRenderView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mSurfaceCallback:Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;

    .line 67
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mSurfaceCallback:Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 68
    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mSurfaceCallback:Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->addRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V

    .line 190
    return-void
.end method

.method public getSurfaceHolder()Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mSurfaceCallback:Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;

    invoke-static {v1}, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->access$000(Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fimi/soul/media/player/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/fimi/soul/media/player/widget/TextureRenderView;Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 72
    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 292
    const-class v0, Lcom/fimi/soul/media/player/widget/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 298
    const-class v0, Lcom/fimi/soul/media/player/widget/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 299
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->doMeasure(II)V

    .line 114
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v0}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v1}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->setMeasuredDimension(II)V

    .line 115
    return-void
.end method

.method public removeRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mSurfaceCallback:Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/fimi/soul/media/player/widget/TextureRenderView$SurfaceCallback;->removeRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V

    .line 195
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->setAspectRatio(I)V

    .line 108
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->requestLayout()V

    .line 109
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->setVideoRotation(I)V

    .line 102
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->setRotation(F)V

    .line 103
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 93
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 95
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->requestLayout()V

    .line 97
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 85
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 86
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/TextureRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->setVideoSize(II)V

    .line 87
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->requestLayout()V

    .line 89
    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method
