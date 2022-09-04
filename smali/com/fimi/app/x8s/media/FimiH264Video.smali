.class public Lcom/fimi/app/x8s/media/FimiH264Video;
.super Landroid/widget/RelativeLayout;
.source "FimiH264Video.java"

# interfaces
.implements Lcom/fimi/app/x8s/media/IFrameDataListener;
.implements Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static VIDEO_HEIGHT:I

.field private static VIDEO_WIDTH:I


# instance fields
.field private FrameRate:I

.field private blackView:Landroid/view/View;

.field private fpvShotCallback:Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;

.field private mCurrentState:I

.field private mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

.field private mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

.field private mSurfaceCallback:Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;

.field private mTargetState:I

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mWorkThread:Lcom/fimi/app/x8s/media/WorkThread;

.field private mX8AiTrackContainterView:Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

.field private mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

.field private x8VideoFrameBufferListener:Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x500

    sput v0, Lcom/fimi/app/x8s/media/FimiH264Video;->VIDEO_WIDTH:I

    .line 43
    const/16 v0, 0x2d0

    sput v0, Lcom/fimi/app/x8s/media/FimiH264Video;->VIDEO_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mCurrentState:I

    .line 41
    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mTargetState:I

    .line 44
    const/16 v0, 0x3c

    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->FrameRate:I

    .line 154
    new-instance v0, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;-><init>(Lcom/fimi/app/x8s/media/FimiH264Video;Lcom/fimi/app/x8s/media/FimiH264Video$1;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mSurfaceCallback:Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;

    .line 64
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/FimiH264Video;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mCurrentState:I

    .line 41
    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mTargetState:I

    .line 44
    const/16 v0, 0x3c

    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->FrameRate:I

    .line 154
    new-instance v0, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;-><init>(Lcom/fimi/app/x8s/media/FimiH264Video;Lcom/fimi/app/x8s/media/FimiH264Video$1;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mSurfaceCallback:Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;

    .line 69
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/FimiH264Video;->init()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mCurrentState:I

    .line 41
    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mTargetState:I

    .line 44
    const/16 v0, 0x3c

    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->FrameRate:I

    .line 154
    new-instance v0, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;-><init>(Lcom/fimi/app/x8s/media/FimiH264Video;Lcom/fimi/app/x8s/media/FimiH264Video$1;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mSurfaceCallback:Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;

    .line 74
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/FimiH264Video;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mCurrentState:I

    .line 41
    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mTargetState:I

    .line 44
    const/16 v0, 0x3c

    iput v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->FrameRate:I

    .line 154
    new-instance v0, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;-><init>(Lcom/fimi/app/x8s/media/FimiH264Video;Lcom/fimi/app/x8s/media/FimiH264Video$1;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mSurfaceCallback:Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;

    .line 80
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/FimiH264Video;->init()V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/media/FimiH264Video;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/media/FimiH264Video;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/media/FimiH264Video;->openVideo(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/media/FimiH264Video;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/media/FimiH264Video;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/media/FimiH264Video;->release(Z)V

    return-void
.end method

.method private openVideo(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/fimi/app/x8s/media/H264Decoder;

    invoke-direct {v0}, Lcom/fimi/app/x8s/media/H264Decoder;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    .line 215
    :cond_0
    sget-boolean v0, Lcom/fimi/app/x8s/X8Application;->Type2:Z

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sget v2, Lcom/fimi/app/x8s/media/FimiH264Video;->VIDEO_WIDTH:I

    sget v3, Lcom/fimi/app/x8s/media/FimiH264Video;->VIDEO_HEIGHT:I

    iget v4, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->FrameRate:I

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/media/H264Decoder;->startJniThread(Landroid/view/Surface;IIILcom/fimi/app/x8s/media/IFrameDataListener;)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/media/H264Decoder;->setX8VideoFrameBufferListener(Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;)V

    .line 221
    sget-boolean v0, Lcom/fimi/app/x8s/X8Application;->isLocalVideo:Z

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Lcom/fimi/app/x8s/media/WorkThread;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/media/WorkThread;-><init>(Lcom/fimi/app/x8s/media/FimiH264Video;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mWorkThread:Lcom/fimi/app/x8s/media/WorkThread;

    .line 223
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mWorkThread:Lcom/fimi/app/x8s/media/WorkThread;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/WorkThread;->start()V

    .line 226
    :cond_1
    return-void

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sget v2, Lcom/fimi/app/x8s/media/FimiH264Video;->VIDEO_WIDTH:I

    sget v3, Lcom/fimi/app/x8s/media/FimiH264Video;->VIDEO_HEIGHT:I

    iget v4, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->FrameRate:I

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/media/H264Decoder;->startWorkThread(Landroid/view/Surface;IIILcom/fimi/app/x8s/media/IFrameDataListener;)V

    goto :goto_0
.end method

.method private release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    if-eqz v0, :cond_1

    .line 243
    iput v1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mCurrentState:I

    .line 244
    iput v1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mTargetState:I

    .line 245
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/H264Decoder;->stopThread()V

    .line 246
    sget-boolean v0, Lcom/fimi/app/x8s/X8Application;->isLocalVideo:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mWorkThread:Lcom/fimi/app/x8s/media/WorkThread;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/WorkThread;->stopThread()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/media/H264Decoder;->setX8VideoFrameBufferListener(Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;)V

    .line 251
    :cond_1
    return-void
.end method


# virtual methods
.method public change9GridSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 140
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 141
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 142
    iget-object v1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/media/FimiH264Video;->changeTrackView(II)V

    .line 144
    return-void
.end method

.method public changeTrackView(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8AiTrackContainterView:Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 149
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 150
    iget-object v1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8AiTrackContainterView:Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v2, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8AiTrackContainterView:Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

    const/16 v1, 0x320

    if-le p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->isFullScreen(Z)V

    .line 152
    return-void

    .line 151
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fpvShot(Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;)V
    .locals 2
    .param p1, "fpvShotCallback"    # Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->fpvShotCallback:Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;

    .line 297
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/media/H264Decoder;->setEnableCallback(I)V

    .line 298
    return-void
.end method

.method public getX8AiTrackContainterView()Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8AiTrackContainterView:Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

    return-object v0
.end method

.method public getmH264Decoder()Lcom/fimi/app/x8s/media/H264Decoder;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    return-object v0
.end method

.method public getmIFrameDataListener()Lcom/fimi/app/x8s/media/IFrameDataListener;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    return-object v0
.end method

.method public init()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/16 v8, 0x11

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 84
    iput v6, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mVideoWidth:I

    .line 85
    iput v6, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mVideoHeight:I

    .line 86
    const/high16 v5, -0x1000000

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/media/FimiH264Video;->setBackgroundColor(I)V

    .line 88
    invoke-virtual {p0, v10}, Lcom/fimi/app/x8s/media/FimiH264Video;->setFocusable(Z)V

    .line 89
    invoke-virtual {p0, v10}, Lcom/fimi/app/x8s/media/FimiH264Video;->setFocusableInTouchMode(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/FimiH264Video;->requestFocus()Z

    .line 92
    iput v6, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mCurrentState:I

    .line 93
    iput v6, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mTargetState:I

    .line 94
    new-instance v4, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/FimiH264Video;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v4, "renderUIView":Landroid/view/TextureView;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 96
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v5, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mSurfaceCallback:Lcom/fimi/app/x8s/media/FimiH264Video$SurfaceCallback;

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 99
    new-instance v5, Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/FimiH264Video;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    .line 100
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 101
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    invoke-virtual {v5, v1}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v5, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/FimiH264Video;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8AiTrackContainterView:Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

    .line 106
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 107
    .local v2, "lp3":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8AiTrackContainterView:Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

    invoke-virtual {v5, v2}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/FimiH264Video;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->blackView:Landroid/view/View;

    .line 110
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 111
    .local v3, "lp4":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->blackView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v5, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->blackView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/FimiH264Video;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/fimi/app/x8s/R$color;->black:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/media/FimiH264Video;->addView(Landroid/view/View;)V

    .line 114
    iget-object v5, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8AiTrackContainterView:Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/media/FimiH264Video;->addView(Landroid/view/View;)V

    .line 115
    iget-object v5, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->blackView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/media/FimiH264Video;->addView(Landroid/view/View;)V

    .line 116
    iget-object v5, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/media/FimiH264Video;->addView(Landroid/view/View;)V

    .line 119
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/common/GlobalConfig;->getGridLine()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/media/FimiH264Video;->showGridLine(I)V

    .line 120
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 256
    return-void
.end method

.method public onCountFrame(III)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "remainder"    # I
    .param p3, "fpvSize"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/app/x8s/media/IFrameDataListener;->onCountFrame(III)V

    .line 278
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 260
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/H264Decoder;->onDestroy()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    .line 264
    :cond_0
    return-void
.end method

.method public onFpvshotReady([B)V
    .locals 3
    .param p1, "rgb"    # [B

    .prologue
    .line 302
    iget-object v1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/media/H264Decoder;->setEnableCallback(I)V

    .line 304
    sget v1, Lcom/fimi/app/x8s/media/FimiH264Video;->VIDEO_WIDTH:I

    sget v2, Lcom/fimi/app/x8s/media/FimiH264Video;->VIDEO_HEIGHT:I

    invoke-static {p1, v1, v2}, Lcom/fimi/app/x8s/tensortfloow/H264ToBitmap;->rgb2Bitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->fpvShotCallback:Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;

    invoke-interface {v1, v0}, Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;->onFpvshotReady(Landroid/graphics/Bitmap;)V

    .line 306
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->fpvShotCallback:Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;

    .line 307
    return-void
.end method

.method public onFrameBuffer([B)V
    .locals 1
    .param p1, "rgb"    # [B

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->x8VideoFrameBufferListener:Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->x8VideoFrameBufferListener:Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;->onFrameBuffer([B)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->fpvShotCallback:Lcom/fimi/app/x8s/interfaces/IFimiFpvShot;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/media/FimiH264Video;->onFpvshotReady([B)V

    .line 168
    :cond_1
    return-void
.end method

.method public onH264Frame(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 173
    return-void
.end method

.method public onRawdataCallBack([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 267
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/H264Decoder;->setH264StreamData([B)V

    .line 270
    :cond_0
    return-void
.end method

.method public setEnableCallback(I)V
    .locals 1
    .param p1, "enbale"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mH264Decoder:Lcom/fimi/app/x8s/media/H264Decoder;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/H264Decoder;->setEnableCallback(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public setX8TrackOverlaVisiable(I)V
    .locals 1
    .param p1, "visiable"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8AiTrackContainterView:Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8AiTrackContainterView;->getViewTrackOverlay()Lcom/fimi/app/x8s/widget/X8TrackOverlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8TrackOverlayView;->setVisibility(I)V

    .line 289
    if-nez p1, :cond_0

    .line 293
    :cond_0
    return-void
.end method

.method public setX8VideoFrameBufferListener(Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;)V
    .locals 0
    .param p1, "x8VideoFrameBufferListener"    # Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->x8VideoFrameBufferListener:Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    .line 158
    return-void
.end method

.method public setmIFrameDataListener(Lcom/fimi/app/x8s/media/IFrameDataListener;)V
    .locals 0
    .param p1, "mIFrameDataListener"    # Lcom/fimi/app/x8s/media/IFrameDataListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    .line 234
    return-void
.end method

.method public showGridLine(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    invoke-static {}, Lcom/fimi/kernel/Constants;->isFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->setType(I)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-nez p1, :cond_2

    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->setVisibility(I)V

    goto :goto_0

    .line 129
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->setType(I)V

    goto :goto_0

    .line 132
    :cond_3
    if-ne p1, v3, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->mX8Camera9GridView:Lcom/fimi/app/x8s/widget/X8Camera9GridView;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->setType(I)V

    goto :goto_0
.end method

.method public showVideoBg(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 176
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v0

    if-ltz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->blackView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/media/FimiH264Video;->blackView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
