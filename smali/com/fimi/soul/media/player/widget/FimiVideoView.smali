.class public Lcom/fimi/soul/media/player/widget/FimiVideoView;
.super Landroid/widget/FrameLayout;
.source "FimiVideoView.java"

# interfaces
.implements Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;


# static fields
.field public static final RENDER_NONE:I = 0x0

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final s_allAspectRatio:[I


# instance fields
.field private TAG:Ljava/lang/String;

.field private decodeType:I

.field private isLog:Z

.field private mAllRenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mBufferingUpdateListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentAspectRatio:I

.field private mCurrentAspectRatioIndex:I

.field private mCurrentBufferPercentage:I

.field private mCurrentRender:I

.field private mCurrentRenderIndex:I

.field private mCurrentState:I

.field private mErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

.field mHandler:Landroid/os/Handler;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

.field private mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

.field private mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

.field private mOnCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

.field mPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

.field mSHCallback:Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field outputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->s_allAspectRatio:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 75
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    .line 78
    iput-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    .line 79
    iput-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCanPause:Z

    .line 277
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->decodeType:I

    .line 388
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$1;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$1;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSizeChangedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 406
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    .line 467
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$3;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$3;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    .line 481
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$4;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$4;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    .line 499
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$5;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$5;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    .line 525
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$6;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$6;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mBufferingUpdateListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 587
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    .line 862
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 863
    sget-object v0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    .line 893
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 894
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRender:I

    .line 922
    iput-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isLog:Z

    .line 975
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$8;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$8;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mHandler:Landroid/os/Handler;

    .line 112
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->initVideoView(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 75
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    .line 78
    iput-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    .line 79
    iput-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCanPause:Z

    .line 277
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->decodeType:I

    .line 388
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$1;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$1;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSizeChangedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 406
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    .line 467
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$3;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$3;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    .line 481
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$4;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$4;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    .line 499
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$5;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$5;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    .line 525
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$6;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$6;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mBufferingUpdateListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 587
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    .line 862
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 863
    sget-object v0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    .line 893
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 894
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRender:I

    .line 922
    iput-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isLog:Z

    .line 975
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$8;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$8;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mHandler:Landroid/os/Handler;

    .line 117
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->initVideoView(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 75
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    .line 78
    iput-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    .line 79
    iput-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCanPause:Z

    .line 277
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->decodeType:I

    .line 388
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$1;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$1;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSizeChangedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 406
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    .line 467
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$3;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$3;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    .line 481
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$4;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$4;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    .line 499
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$5;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$5;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    .line 525
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$6;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$6;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mBufferingUpdateListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 587
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    .line 862
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 863
    sget-object v0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    .line 893
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 894
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRender:I

    .line 922
    iput-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isLog:Z

    .line 975
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$8;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$8;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mHandler:Landroid/os/Handler;

    .line 122
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->initVideoView(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 75
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    .line 78
    iput-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    .line 79
    iput-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCanPause:Z

    .line 277
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->decodeType:I

    .line 388
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$1;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$1;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSizeChangedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 406
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$2;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    .line 467
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$3;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$3;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    .line 481
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$4;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$4;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    .line 499
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$5;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$5;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    .line 525
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$6;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$6;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mBufferingUpdateListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 587
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$7;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    .line 862
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 863
    sget-object v0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    .line 893
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 894
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRender:I

    .line 922
    iput-boolean v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isLog:Z

    .line 975
    new-instance v0, Lcom/fimi/soul/media/player/widget/FimiVideoView$8;

    invoke-direct {v0, p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView$8;-><init>(Lcom/fimi/soul/media/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mHandler:Landroid/os/Handler;

    .line 127
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->initVideoView(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1102(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mOnCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mOnInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoRotationDegree:I

    return p1
.end method

.method static synthetic access$1700(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mOnErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$200(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$2002(Lcom/fimi/soul/media/player/widget/FimiVideoView;Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;)Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$2100(Lcom/fimi/soul/media/player/widget/FimiVideoView;Lcom/fimi/soul/media/player/IMediaPlayer;Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # Lcom/fimi/soul/media/player/IMediaPlayer;
    .param p2, "x2"    # Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->bindSurfaceHolder(Lcom/fimi/soul/media/player/IMediaPlayer;Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->decodeType:I

    return v0
.end method

.method static synthetic access$2300(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->openVideo(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$302(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$400(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IRenderView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/fimi/soul/media/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$600(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mOnPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/IMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/soul/media/player/widget/FimiVideoView;)Lcom/fimi/soul/media/player/widget/IMediaController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/soul/media/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/widget/FimiVideoView;

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 379
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    invoke-interface {v1, p0}, Lcom/fimi/soul/media/player/widget/IMediaController;->setMediaPlayer(Lcom/fimi/soul/media/player/widget/FmMediaController$MediaPlayerControl;)V

    .line 381
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 383
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    invoke-interface {v1, v0}, Lcom/fimi/soul/media/player/widget/IMediaController;->setAnchorView(Landroid/view/View;)V

    .line 384
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/fimi/soul/media/player/widget/IMediaController;->setEnabled(Z)V

    .line 386
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 382
    goto :goto_0
.end method

.method private bindSurfaceHolder(Lcom/fimi/soul/media/player/IMediaPlayer;Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;)V
    .locals 1
    .param p1, "mp"    # Lcom/fimi/soul/media/player/IMediaPlayer;
    .param p2, "holder"    # Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    .prologue
    .line 576
    if-nez p1, :cond_0

    .line 585
    :goto_0
    return-void

    .line 579
    :cond_0
    if-nez p2, :cond_1

    .line 580
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/fimi/soul/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 584
    :cond_1
    invoke-interface {p2, p1}, Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Lcom/fimi/soul/media/player/IMediaPlayer;)V

    goto :goto_0
.end method

.method private initRenders()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 897
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 900
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRender:I

    .line 909
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->setRender(I)V

    .line 910
    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    .line 141
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->initRenders()V

    .line 142
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoWidth:I

    .line 143
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoHeight:I

    .line 146
    invoke-virtual {p0, v2}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->setFocusable(Z)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->setFocusableInTouchMode(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->requestFocus()Z

    .line 150
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 151
    iput v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    .line 152
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 816
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo(I)V
    .locals 10
    .param p1, "decodeType"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 284
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    if-nez v6, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-virtual {p0, v7}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->release(Z)V

    .line 292
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 293
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v9, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 296
    const/4 v4, 0x0

    .line 297
    .local v4, "ijkMediaPlayer":Lcom/fimi/soul/media/player/FimiMediaPlayer;
    :try_start_0
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    if-eqz v6, :cond_2

    .line 298
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->getIntance()Lcom/fimi/soul/media/player/FimiMediaPlayer;

    move-result-object v4

    .line 299
    const/4 v6, 0x3

    invoke-static {v6}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->native_setLogLevel(I)V

    .line 300
    const/4 v6, 0x4

    const-string v7, "mediacodec"

    int-to-long v8, p1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 301
    const/4 v6, 0x4

    const-string v7, "framedrop"

    const-wide/16 v8, 0x14

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 302
    const/4 v6, 0x4

    const-string v7, "start-on-prepared"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 304
    const/4 v6, 0x1

    const-string v7, "http-detect-range-support"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 306
    const/4 v6, 0x2

    const-string v7, "skip_loop_filter"

    const-wide/16 v8, 0x30

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 309
    const/4 v6, 0x1

    const-string v7, "analyzeduration"

    const-string v8, "20000"

    invoke-virtual {v4, v6, v7, v8}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v6, 0x1

    const-string v7, "probsize"

    const-string v8, "4096"

    invoke-virtual {v4, v6, v7, v8}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_2
    iput-object v4, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    .line 319
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 323
    .local v1, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    iget-object v7, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v6, v7}, Lcom/fimi/soul/media/player/IMediaPlayer;->setOnPreparedListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 324
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    iget-object v7, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSizeChangedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v6, v7}, Lcom/fimi/soul/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 325
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    iget-object v7, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v6, v7}, Lcom/fimi/soul/media/player/IMediaPlayer;->setOnCompletionListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 326
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    iget-object v7, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v6, v7}, Lcom/fimi/soul/media/player/IMediaPlayer;->setOnErrorListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;)V

    .line 327
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    iget-object v7, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v6, v7}, Lcom/fimi/soul/media/player/IMediaPlayer;->setOnInfoListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;)V

    .line 328
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    iget-object v7, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mBufferingUpdateListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v6, v7}, Lcom/fimi/soul/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 329
    const/4 v6, 0x0

    iput v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentBufferPercentage:I

    .line 330
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-le v6, v7, :cond_3

    .line 331
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    iget-object v7, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v6, v7, v8, v9}, Lcom/fimi/soul/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 335
    :goto_1
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    iget-object v7, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    invoke-direct {p0, v6, v7}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->bindSurfaceHolder(Lcom/fimi/soul/media/player/IMediaPlayer;Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;)V

    .line 336
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Lcom/fimi/soul/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 337
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/fimi/soul/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 338
    const/4 v3, 0x2

    .line 339
    .local v3, "f":I
    const/4 v5, 0x2

    .line 345
    .local v5, "t":I
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v6, v5, v3}, Lcom/fimi/soul/media/player/IMediaPlayer;->prepareAsync(II)V

    .line 351
    const/4 v6, 0x1

    iput v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 352
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 353
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "f":I
    .end local v5    # "t":I
    :catch_0
    move-exception v2

    .line 354
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    const/4 v6, -0x1

    iput v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 356
    const/4 v6, -0x1

    iput v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    .line 357
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    iget-object v7, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;->onError(Lcom/fimi/soul/media/player/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 365
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 367
    throw v6

    .line 333
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    iget-object v7, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/fimi/soul/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 359
    .end local v1    # "context":Landroid/content/Context;
    :catch_1
    move-exception v2

    .line 360
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    const/4 v6, -0x1

    iput v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 362
    const/4 v6, -0x1

    iput v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    .line 363
    iget-object v6, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    iget-object v7, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;->onError(Lcom/fimi/soul/media/player/IMediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    .line 255
    iput-object p2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mHeaders:Ljava/util/Map;

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSeekWhenPrepared:I

    .line 257
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->decodeType:I

    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->openVideo(I)V

    .line 258
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->requestLayout()V

    .line 259
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->invalidate()V

    .line 260
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/widget/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/widget/IMediaController;->hide()V

    .line 722
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/widget/IMediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 800
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentBufferPercentage:I

    .line 802
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 778
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 765
    const-string v0, "player"

    const-string v1, "getDuration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 770
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLogString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 961
    const-string v0, ""

    .line 962
    .local v0, "log":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    if-eqz v2, :cond_0

    .line 963
    const/16 v2, 0x40

    new-array v1, v2, [I

    .line 965
    .local v1, "network_info_int":[I
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v2, v1}, Lcom/fimi/soul/media/player/IMediaPlayer;->PlayerGetNetworkInfo([I)I

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (kbps)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (receive)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (lose) \n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (35ms)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (40ms)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    .end local v1    # "network_info_int":[I
    :cond_0
    return-object v0
.end method

.method public getmCurrentState()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 807
    const-string v0, "player"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 809
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->pause()V

    .line 813
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 677
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 684
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    if-eqz v2, :cond_8

    .line 685
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 687
    :cond_0
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 688
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->pause()V

    .line 689
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/widget/IMediaController;->show()V

    .line 713
    :cond_1
    :goto_1
    return v1

    .line 677
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 691
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_3
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->start()V

    .line 692
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/widget/IMediaController;->hide()V

    goto :goto_1

    .line 695
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 696
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 697
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->start()V

    .line 698
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/widget/IMediaController;->hide()V

    goto :goto_1

    .line 701
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 703
    :cond_6
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 704
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->pause()V

    .line 705
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/widget/IMediaController;->show()V

    goto :goto_1

    .line 709
    :cond_7
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->toggleMediaControlsVisiblity()V

    .line 713
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onPreviewInputNetData([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "nPos"    # I
    .param p3, "len"    # I

    .prologue
    .line 928
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 942
    if-eqz p1, :cond_1

    .line 953
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/soul/media/player/IMediaPlayer;->PlayerPreviewInputNetData([BII)I

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FimiView onPreviewInputNetData data = null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    if-eqz v0, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->toggleMediaControlsVisiblity()V

    .line 664
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    if-eqz v0, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->toggleMediaControlsVisiblity()V

    .line 672
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 738
    const-string v0, "player"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    if-nez v0, :cond_0

    .line 751
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/IMediaPlayer;->pause()V

    .line 743
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/IMediaPlayer;->pause()V

    .line 746
    iput v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 750
    :cond_1
    iput v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    goto :goto_0
.end method

.method public release(Z)V
    .locals 4
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 645
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/soul/media/player/IMediaPlayer;->reset()V

    .line 647
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/soul/media/player/IMediaPlayer;->release()V

    .line 648
    iput-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    .line 650
    iput v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 651
    if-eqz p1, :cond_0

    .line 652
    iput v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 655
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 657
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public releaseWithoutStop()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/soul/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 639
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 759
    const-string v0, "Good"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->decodeType:I

    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->openVideo(I)V

    .line 761
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "msec"    # I

    .prologue
    .line 783
    const-string v0, "player"

    const-string v1, "seekto"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/fimi/soul/media/player/IMediaPlayer;->seekTo(J)V

    .line 786
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSeekWhenPrepared:I

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setDecodeType(I)V
    .locals 0
    .param p1, "decodeType"    # I

    .prologue
    .line 280
    iput p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->decodeType:I

    .line 281
    return-void
.end method

.method public setHideSurfaceView(Z)V
    .locals 2
    .param p1, "isVisiable"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    instance-of v0, v0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    check-cast v0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;

    invoke-virtual {v0}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, -0x2

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 196
    :cond_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setMediaController(Lcom/fimi/soul/media/player/widget/IMediaController;)V
    .locals 1
    .param p1, "controller"    # Lcom/fimi/soul/media/player/widget/IMediaController;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/widget/IMediaController;->hide()V

    .line 374
    :cond_0
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/soul/media/player/widget/IMediaController;

    .line 375
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->attachMediaController()V

    .line 376
    return-void
.end method

.method public setOnCompletionListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mOnCompletionListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnCompletionListener;

    .line 550
    return-void
.end method

.method public setOnErrorListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mOnErrorListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnErrorListener;

    .line 562
    return-void
.end method

.method public setOnInfoListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mOnInfoListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnInfoListener;

    .line 572
    return-void
.end method

.method public setOnPreparedListener(Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mOnPreparedListener:Lcom/fimi/soul/media/player/IMediaPlayer$OnPreparedListener;

    .line 540
    return-void
.end method

.method public setRender(I)V
    .locals 7
    .param p1, "render"    # I

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 220
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "invalid render %d\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 201
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->setRenderView(Lcom/fimi/soul/media/player/widget/IRenderView;)V

    goto :goto_0

    .line 204
    :pswitch_1
    new-instance v0, Lcom/fimi/soul/media/player/widget/TextureRenderView;

    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fimi/soul/media/player/widget/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, "renderView":Lcom/fimi/soul/media/player/widget/TextureRenderView;
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->getSurfaceHolder()Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v1, v2}, Lcom/fimi/soul/media/player/widget/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Lcom/fimi/soul/media/player/IMediaPlayer;)V

    .line 207
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/soul/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->setVideoSize(II)V

    .line 208
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/soul/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 209
    iget v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    invoke-virtual {v0, v1}, Lcom/fimi/soul/media/player/widget/TextureRenderView;->setAspectRatio(I)V

    .line 211
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->setRenderView(Lcom/fimi/soul/media/player/widget/IRenderView;)V

    goto :goto_0

    .line 215
    .end local v0    # "renderView":Lcom/fimi/soul/media/player/widget/TextureRenderView;
    :pswitch_2
    new-instance v0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;

    invoke-virtual {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, "renderView":Lcom/fimi/soul/media/player/widget/SurfaceRenderView;
    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->setRenderView(Lcom/fimi/soul/media/player/widget/IRenderView;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setRenderView(Lcom/fimi/soul/media/player/widget/IRenderView;)V
    .locals 6
    .param p1, "renderView"    # Lcom/fimi/soul/media/player/widget/IRenderView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 155
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v2, v5}, Lcom/fimi/soul/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/widget/IRenderView;->getView()Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, "renderUIView":Landroid/view/View;
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Lcom/fimi/soul/media/player/widget/IRenderView;->removeRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V

    .line 161
    iput-object v5, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    .line 162
    invoke-virtual {p0, v1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->removeView(Landroid/view/View;)V

    .line 165
    .end local v1    # "renderUIView":Landroid/view/View;
    :cond_1
    if-nez p1, :cond_2

    .line 184
    :goto_0
    return-void

    .line 168
    :cond_2
    iput-object p1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    .line 169
    iget v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    invoke-interface {p1, v2}, Lcom/fimi/soul/media/player/widget/IRenderView;->setAspectRatio(I)V

    .line 170
    iget v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoWidth:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoHeight:I

    if-lez v2, :cond_3

    .line 171
    iget v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoWidth:I

    iget v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoHeight:I

    invoke-interface {p1, v2, v3}, Lcom/fimi/soul/media/player/widget/IRenderView;->setVideoSize(II)V

    .line 172
    :cond_3
    iget v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoSarNum:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoSarDen:I

    if-lez v2, :cond_4

    .line 173
    iget v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoSarNum:I

    iget v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoSarDen:I

    invoke-interface {p1, v2, v3}, Lcom/fimi/soul/media/player/widget/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 175
    :cond_4
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    invoke-interface {v2}, Lcom/fimi/soul/media/player/widget/IRenderView;->getView()Landroid/view/View;

    move-result-object v1

    .line 176
    .restart local v1    # "renderUIView":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 180
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-virtual {p0, v1}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->addView(Landroid/view/View;)V

    .line 182
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    iget-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Lcom/fimi/soul/media/player/widget/IRenderView;->addRenderCallback(Lcom/fimi/soul/media/player/widget/IRenderView$IRenderCallback;)V

    .line 183
    iget-object v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    iget v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mVideoRotationDegree:I

    invoke-interface {v2, v3}, Lcom/fimi/soul/media/player/widget/IRenderView;->setVideoRotation(I)V

    goto :goto_0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 232
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 241
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isM"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    instance-of v0, v0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    check-cast v0, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;

    invoke-virtual {v0, p1}, Lcom/fimi/soul/media/player/widget/SurfaceRenderView;->setZOrderMediaOverlay(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 726
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 729
    :cond_0
    invoke-direct {p0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/soul/media/player/IMediaPlayer;->start()V

    .line 731
    iput v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 733
    :cond_1
    iput v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    .line 734
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 266
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/soul/media/player/IMediaPlayer;->stop()V

    .line 268
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/soul/media/player/IMediaPlayer;->release()V

    .line 269
    iput-object v3, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/soul/media/player/IMediaPlayer;

    .line 270
    iput v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentState:I

    .line 271
    iput v2, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mTargetState:I

    .line 272
    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 273
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 275
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 754
    const-string v0, "Good"

    const-string v1, "suspend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->release(Z)V

    .line 756
    return-void
.end method

.method public toggleAspectRatio()I
    .locals 2

    .prologue
    .line 866
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 867
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    sget-object v1, Lcom/fimi/soul/media/player/widget/FimiVideoView;->s_allAspectRatio:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 869
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 870
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    iget v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    invoke-interface {v0, v1}, Lcom/fimi/soul/media/player/widget/IRenderView;->setAspectRatio(I)V

    .line 872
    :cond_0
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    return v0
.end method

.method public toggleAspectRatioPOi()I
    .locals 2

    .prologue
    .line 876
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 877
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    sget-object v1, Lcom/fimi/soul/media/player/widget/FimiVideoView;->s_allAspectRatio:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 879
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 880
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/soul/media/player/widget/IRenderView;

    iget v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    invoke-interface {v0, v1}, Lcom/fimi/soul/media/player/widget/IRenderView;->setAspectRatio(I)V

    .line 882
    :cond_0
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    return v0
.end method

.method public toggleRender()I
    .locals 2

    .prologue
    .line 913
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 914
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    iget-object v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 916
    iget-object v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRender:I

    .line 917
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/widget/FimiVideoView;->setRender(I)V

    .line 918
    iget v0, p0, Lcom/fimi/soul/media/player/widget/FimiVideoView;->mCurrentRender:I

    return v0
.end method
