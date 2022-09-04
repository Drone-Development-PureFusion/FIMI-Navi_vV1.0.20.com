.class public Lcom/fimi/soul/media/player/widget/SurfaceRenderView;
.super Landroid/view/SurfaceView;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/fimi/soul/media/player/widget/IRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/soul/media/player/widget/SurfaceRenderView$SurfaceCallback;,
        Lcom/fimi/soul/media/player/widget/SurfaceRenderView$InternalSurfaceHolder;
    }
.end annotation


# instance fields
.field private mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

.field private mSurfaceCallback:Lcom/fimi/soul/media/player/widget/SurfaceRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v0, Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    .line 65
    new-instance v0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView$SurfaceCallback;-><init>(Lcom/fimi/soul/media/player/widget/SurfaceRenderView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->mSurfaceCallback:Lcom/fimi/soul/media/player/widget/SurfaceRenderView$SurfaceCallback;

    .line 66
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->mSurfaceCallback:Lcom/fimi/soul/media/player/widget/SurfaceRenderView$SurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 68
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->mSurfaceCallback:Lcom/fimi/soul/media/player/widget/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView$SurfaceCallback;->addRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V

    .line 172
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 73
    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 269
    const-class v0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 277
    const-class v0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->doMeasure(II)V

    .line 115
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v0}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v1}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->setMeasuredDimension(II)V

    .line 116
    return-void
.end method

.method public removeRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->mSurfaceCallback:Lcom/fimi/soul/media/player/widget/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView$SurfaceCallback;->removeRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V

    .line 177
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->setAspectRatio(I)V

    .line 109
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->requestLayout()V

    .line 110
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 3
    .param p1, "degree"    # I

    .prologue
    .line 103
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceView doesn\'t support rotation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 95
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 97
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->requestLayout()V

    .line 99
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 86
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->mMeasureHelper:Lcom/fimi/soul/media/player/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/soul/media/player/widget/MeasureHelper;->setVideoSize(II)V

    .line 88
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 89
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->requestLayout()V

    .line 91
    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
