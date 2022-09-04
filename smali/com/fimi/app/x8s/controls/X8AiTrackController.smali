.class public Lcom/fimi/app/x8s/controls/X8AiTrackController;
.super Ljava/lang/Object;
.source "X8AiTrackController.java"

# interfaces
.implements Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;
.implements Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;
    }
.end annotation


# instance fields
.field private fimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

.field isLog:Z

.field private isShow:Z

.field private isTou:Z

.field private listener:Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

.field private mX8DetectionControler:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

.field private vcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

.field private viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    invoke-direct {v0}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->mX8DetectionControler:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/X8AiTrackController;)Lcom/fimi/app/x8s/widget/X8TrackOverlayView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8AiTrackController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/X8AiTrackController;)Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8AiTrackController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->listener:Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

    return-object v0
.end method


# virtual methods
.method public closeUi()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->cleanTrackerRect()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->isShow:Z

    .line 175
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->fimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/media/FimiH264Video;->setX8TrackOverlaVisiable(I)V

    .line 176
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fimi/app/x8s/X8Application;->enableGesture:Z

    .line 178
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/fimi/app/x8s/controls/X8MapVideoController;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mMapVideoController"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .prologue
    .line 48
    invoke-virtual {p2}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getVideoView()Lcom/fimi/app/x8s/media/FimiH264Video;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->fimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->fimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/FimiH264Video;->getX8AiTrackContainterView()Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->getViewTrackOverlay()Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->mX8DetectionControler:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->fimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->initView(Landroid/app/Activity;Lcom/fimi/app/x8s/widget/X8TrackOverlayView;Lcom/fimi/app/x8s/media/FimiH264Video;Lcom/fimi/app/x8s/tensortfloow/TestOverlay;Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler$onDetectionListener;)V

    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setCustomOverlay(Z)V

    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setOverlayListener(Lcom/fimi/app/x8s/widget/X8TrackOverlayView$OverlayListener;)V

    .line 53
    return-void
.end method

.method public isCanSelect()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isValidError(IIII)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "ret":Z
    if-ne p1, p2, :cond_0

    if-ne p2, p3, :cond_0

    if-ne p3, p4, :cond_0

    if-nez p4, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    .line 166
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onChangeGoLocation(FFFFII)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "top"    # F
    .param p4, "bottom"    # F
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->listener:Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->listener:Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;->onChangeGoLocation(FFFFII)V

    .line 128
    :cond_0
    return-void
.end method

.method public onDetectionFailed()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onDetectionResult(IIIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "classfier"    # I

    .prologue
    .line 63
    invoke-virtual/range {p0 .. p5}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->sendRectF(IIIII)V

    .line 64
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Z)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "lost"    # Z

    .prologue
    .line 120
    return-void
.end method

.method public onTouchActionDown()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->isTou:Z

    .line 104
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->mX8DetectionControler:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->onTouchActionDown()V

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->listener:Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;->onTouchActionDown()V

    .line 107
    return-void
.end method

.method public onTouchActionUp(FFFFIIII)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F
    .param p5, "x1"    # I
    .param p6, "y1"    # I
    .param p7, "x2"    # I
    .param p8, "y2"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->mX8DetectionControler:Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/fimi/app/x8s/tensortfloow/X8DetectionControler;->onTouchActionUp(IIIIIIII)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->isTou:Z

    .line 113
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->listener:Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;->onTouchActionUp()V

    .line 115
    return-void
.end method

.method public onTracking(Lcom/fimi/x8sdk/dataparser/AutoVcTracking;)V
    .locals 5
    .param p1, "tracking"    # Lcom/fimi/x8sdk/dataparser/AutoVcTracking;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->isShow:Z

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->isTou:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->listener:Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;->onTracking()V

    .line 146
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->getTrackErrorCode()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setSelectError(Z)V

    .line 155
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->getY()I

    move-result v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->getW()I

    move-result v3

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->getH()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->onTracking(IIII)V

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->getW()I

    move-result v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->getH()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->isValidError(IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setSelectError(Z)V

    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->viewTrackOverlay:Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoVcTracking;->getTrackErrorCode()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/fimi/app/x8s/enums/X8VcErrorCode;->valueOf(I)Lcom/fimi/app/x8s/enums/X8VcErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public openUi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->isShow:Z

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->fimiH264Video:Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/media/FimiH264Video;->setX8TrackOverlaVisiable(I)V

    .line 184
    sput-boolean v1, Lcom/fimi/app/x8s/X8Application;->enableGesture:Z

    .line 185
    return-void
.end method

.method public sendRectF(IIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "classfier"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->vcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8AiTrackController$1;-><init>(Lcom/fimi/app/x8s/controls/X8AiTrackController;)V

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fimi/x8sdk/controller/X8VcManager;->setVcRectF(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;IIIII)V

    .line 99
    return-void
.end method

.method public setOnAiTrackControllerListener(Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->listener:Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;

    .line 57
    return-void
.end method

.method public setTou(Z)V
    .locals 0
    .param p1, "tou"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->isTou:Z

    .line 190
    return-void
.end method

.method public setVcManager(Lcom/fimi/x8sdk/controller/X8VcManager;)V
    .locals 0
    .param p1, "vcManager"    # Lcom/fimi/x8sdk/controller/X8VcManager;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8AiTrackController;->vcManager:Lcom/fimi/x8sdk/controller/X8VcManager;

    .line 73
    return-void
.end method
