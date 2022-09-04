.class public Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;
.super Landroid/widget/RelativeLayout;
.source "X8AiTrackContainterView.java"


# instance fields
.field private mDetector:Landroid/view/GestureDetector;

.field private mX8GestureDetector:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

.field private viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->initView(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->initView(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->initView(Landroid/content/Context;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getViewTrackOverlay()Lcom/fimi/app/x8s/widget/X8TrackOverlayView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    return-object v0
.end method

.method public initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_track_contaitner_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    sget v0, Lcom/fimi/app/x8s/R$id;->view_follow_rectangle:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    .line 60
    new-instance v0, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->mX8GestureDetector:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    .line 61
    return-void
.end method

.method public isFullScreen(Z)V
    .locals 0
    .param p1, "full"    # Z

    .prologue
    .line 65
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    sget-boolean v0, Lcom/fimi/app/x8s/X8Application;->enableGesture:Z

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->mX8GestureDetector:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    div-int/lit8 v1, p1, 0x6

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->setDistance(I)V

    .line 99
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    sget-boolean v1, Lcom/fimi/app/x8s/X8Application;->enableGesture:Z

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->mX8GestureDetector:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 81
    .local v0, "b":Z
    const/4 v1, 0x1

    .line 83
    .end local v0    # "b":Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setViewTrackOverlay(Lcom/fimi/app/x8s/widget/X8TrackOverlayView;)V
    .locals 0
    .param p1, "viewTrackOverlay"    # Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    .line 35
    return-void
.end method

.method public setX8GestureListener(Lcom/fimi/app/x8s/interfaces/IX8GestureListener;)V
    .locals 1
    .param p1, "x8GestureListener"    # Lcom/fimi/app/x8s/interfaces/IX8GestureListener;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->mX8GestureDetector:Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/tensortfloow/X8GestureDetector;->setX8GestureListener(Lcom/fimi/app/x8s/interfaces/IX8GestureListener;)V

    .line 90
    return-void
.end method
