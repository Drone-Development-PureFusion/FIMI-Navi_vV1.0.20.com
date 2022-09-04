.class public Lcom/fimi/player/widget/FimiVideoView;
.super Landroid/widget/FrameLayout;
.source "FimiVideoView.java"

# interfaces
.implements Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/player/widget/FimiVideoView$OnFimiFileCallBackListener;,
        Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;
    }
.end annotation


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

.field public static Video_Decode_Type_Soft:I

.field private static final s_allAspectRatio:[I


# instance fields
.field private TAG:Ljava/lang/String;

.field private decodeType:I

.field private liveUrl:Ljava/lang/String;

.field public liveVideoListener:Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

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

.field private mBufferingUpdateListener:Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentAspectRatio:I

.field private mCurrentAspectRatioIndex:I

.field private mCurrentBufferPercentage:I

.field private mCurrentRender:I

.field private mCurrentRenderIndex:I

.field private mCurrentState:I

.field private mErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

.field private mFimiFileCallBackListener:Lcom/fimi/player/widget/FimiVideoView$OnFimiFileCallBackListener;

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

.field private mInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

.field private mMediaController:Lcom/fimi/player/widget/IMediaController;

.field private mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

.field private mMediaQualityListener:Lcom/fimi/player/IMediaPlayer$MediaQualityListener;

.field private mOnCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

.field mPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

.field private mPreviewCallBackListener:Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;

.field private mRenderView:Lcom/fimi/player/widget/IRenderView;

.field mSHCallback:Lcom/fimi/player/widget/IRenderView$IRenderCallback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/fimi/player/widget/FimiVideoView;->Video_Decode_Type_Soft:I

    .line 1008
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fimi/player/widget/FimiVideoView;->s_allAspectRatio:[I

    return-void

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

    .line 120
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 77
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    .line 80
    iput-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    .line 81
    iput-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCanPause:Z

    .line 294
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->decodeType:I

    .line 470
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$1;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$1;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSizeChangedListener:Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 488
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$2;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$2;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    .line 561
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$3;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$3;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    .line 580
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$4;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$4;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    .line 598
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$5;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$5;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    .line 623
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$6;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$6;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mBufferingUpdateListener:Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 690
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$7;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$7;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/player/widget/IRenderView$IRenderCallback;

    .line 1015
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 1016
    sget-object v0, Lcom/fimi/player/widget/FimiVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    .line 1046
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 1047
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRender:I

    .line 1105
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$8;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$8;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->liveVideoListener:Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

    .line 121
    invoke-direct {p0, p1}, Lcom/fimi/player/widget/FimiVideoView;->initVideoView(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 77
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    .line 80
    iput-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    .line 81
    iput-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCanPause:Z

    .line 294
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->decodeType:I

    .line 470
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$1;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$1;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSizeChangedListener:Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 488
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$2;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$2;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    .line 561
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$3;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$3;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    .line 580
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$4;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$4;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    .line 598
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$5;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$5;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    .line 623
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$6;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$6;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mBufferingUpdateListener:Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 690
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$7;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$7;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/player/widget/IRenderView$IRenderCallback;

    .line 1015
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 1016
    sget-object v0, Lcom/fimi/player/widget/FimiVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    .line 1046
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 1047
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRender:I

    .line 1105
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$8;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$8;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->liveVideoListener:Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

    .line 126
    invoke-direct {p0, p1}, Lcom/fimi/player/widget/FimiVideoView;->initVideoView(Landroid/content/Context;)V

    .line 127
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

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 77
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    .line 80
    iput-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    .line 81
    iput-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCanPause:Z

    .line 294
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->decodeType:I

    .line 470
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$1;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$1;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSizeChangedListener:Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 488
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$2;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$2;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    .line 561
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$3;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$3;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    .line 580
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$4;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$4;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    .line 598
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$5;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$5;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    .line 623
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$6;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$6;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mBufferingUpdateListener:Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 690
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$7;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$7;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/player/widget/IRenderView$IRenderCallback;

    .line 1015
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 1016
    sget-object v0, Lcom/fimi/player/widget/FimiVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    .line 1046
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 1047
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRender:I

    .line 1105
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$8;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$8;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->liveVideoListener:Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

    .line 131
    invoke-direct {p0, p1}, Lcom/fimi/player/widget/FimiVideoView;->initVideoView(Landroid/content/Context;)V

    .line 132
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

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 77
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    .line 80
    iput-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    .line 81
    iput-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCanPause:Z

    .line 294
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->decodeType:I

    .line 470
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$1;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$1;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSizeChangedListener:Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 488
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$2;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$2;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    .line 561
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$3;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$3;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    .line 580
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$4;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$4;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    .line 598
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$5;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$5;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    .line 623
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$6;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$6;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mBufferingUpdateListener:Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 690
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$7;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$7;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/player/widget/IRenderView$IRenderCallback;

    .line 1015
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 1016
    sget-object v0, Lcom/fimi/player/widget/FimiVideoView;->s_allAspectRatio:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    .line 1046
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 1047
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRender:I

    .line 1105
    new-instance v0, Lcom/fimi/player/widget/FimiVideoView$8;

    invoke-direct {v0, p0}, Lcom/fimi/player/widget/FimiVideoView$8;-><init>(Lcom/fimi/player/widget/FimiVideoView;)V

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->liveVideoListener:Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

    .line 136
    invoke-direct {p0, p1}, Lcom/fimi/player/widget/FimiVideoView;->initVideoView(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/fimi/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/fimi/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/fimi/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/fimi/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1102(Lcom/fimi/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/fimi/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/fimi/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/fimi/player/widget/FimiVideoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mOnCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mPreviewCallBackListener:Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mOnInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/fimi/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoRotationDegree:I

    return p1
.end method

.method static synthetic access$1800(Lcom/fimi/player/widget/FimiVideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mOnErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$2002(Lcom/fimi/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$202(Lcom/fimi/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$2102(Lcom/fimi/player/widget/FimiVideoView;Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;)Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/fimi/player/widget/FimiVideoView;Lcom/fimi/player/IMediaPlayer;Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # Lcom/fimi/player/IMediaPlayer;
    .param p2, "x2"    # Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/fimi/player/widget/FimiVideoView;->bindSurfaceHolder(Lcom/fimi/player/IMediaPlayer;Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/fimi/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->decodeType:I

    return v0
.end method

.method static synthetic access$2400(Lcom/fimi/player/widget/FimiVideoView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/fimi/player/widget/FimiVideoView;->openVideo(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/FimiVideoView$OnFimiFileCallBackListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mFimiFileCallBackListener:Lcom/fimi/player/widget/FimiVideoView$OnFimiFileCallBackListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$302(Lcom/fimi/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$400(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IRenderView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$502(Lcom/fimi/player/widget/FimiVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$600(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mOnPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/IMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/player/widget/FimiVideoView;)Lcom/fimi/player/widget/IMediaController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/player/widget/FimiVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/widget/FimiVideoView;

    .prologue
    .line 50
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 461
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    invoke-interface {v1, p0}, Lcom/fimi/player/widget/IMediaController;->setMediaPlayer(Lcom/fimi/player/widget/FmMediaController$MediaPlayerControl;)V

    .line 463
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 465
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    invoke-interface {v1, v0}, Lcom/fimi/player/widget/IMediaController;->setAnchorView(Landroid/view/View;)V

    .line 466
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/fimi/player/widget/IMediaController;->setEnabled(Z)V

    .line 468
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 464
    goto :goto_0
.end method

.method private bindSurfaceHolder(Lcom/fimi/player/IMediaPlayer;Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;)V
    .locals 1
    .param p1, "mp"    # Lcom/fimi/player/IMediaPlayer;
    .param p2, "holder"    # Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    .prologue
    .line 679
    if-nez p1, :cond_0

    .line 688
    :goto_0
    return-void

    .line 682
    :cond_0
    if-nez p2, :cond_1

    .line 683
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/fimi/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 687
    :cond_1
    invoke-interface {p2, p1}, Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Lcom/fimi/player/IMediaPlayer;)V

    goto :goto_0
.end method

.method private initRenders()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1050
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1053
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRender:I

    .line 1062
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->setRender(I)V

    .line 1063
    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->initRenders()V

    .line 151
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoWidth:I

    .line 152
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoHeight:I

    .line 155
    invoke-virtual {p0, v2}, Lcom/fimi/player/widget/FimiVideoView;->setFocusable(Z)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/fimi/player/widget/FimiVideoView;->setFocusableInTouchMode(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->requestFocus()Z

    .line 159
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 160
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    .line 161
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 969
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo(I)V
    .locals 8
    .param p1, "decodeType"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 360
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    if-nez v4, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-nez v4, :cond_0

    .line 370
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 371
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v7, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 374
    const/4 v3, 0x0

    .line 375
    .local v3, "ijkMediaPlayer":Lcom/fimi/player/FimiMediaPlayer;
    :try_start_0
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 376
    invoke-static {}, Lcom/fimi/player/FimiMediaPlayer;->getIntance()Lcom/fimi/player/FimiMediaPlayer;

    move-result-object v3

    .line 377
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/fimi/player/FimiMediaPlayer;->native_setLogLevel(I)V

    .line 378
    const/4 v4, 0x4

    const-string v5, "mediacodec"

    int-to-long v6, p1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/fimi/player/FimiMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 379
    const/4 v4, 0x4

    const-string v5, "framedrop"

    const-wide/16 v6, 0x14

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/fimi/player/FimiMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 380
    const/4 v4, 0x4

    const-string v5, "start-on-prepared"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/fimi/player/FimiMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 382
    const/4 v4, 0x1

    const-string v5, "http-detect-range-support"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/fimi/player/FimiMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 384
    const/4 v4, 0x2

    const-string v5, "skip_loop_filter"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/fimi/player/FimiMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 387
    const/4 v4, 0x1

    const-string v5, "analyzeduration"

    const-string v6, "20000"

    invoke-virtual {v3, v4, v5, v6}, Lcom/fimi/player/FimiMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v4, 0x1

    const-string v5, "probsize"

    const-string v6, "4096"

    invoke-virtual {v3, v4, v5, v6}, Lcom/fimi/player/FimiMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_2
    iput-object v3, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    .line 398
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 402
    .local v1, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v4, v5}, Lcom/fimi/player/IMediaPlayer;->setOnPreparedListener(Lcom/fimi/player/IMediaPlayer$OnPreparedListener;)V

    .line 403
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mSizeChangedListener:Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v4, v5}, Lcom/fimi/player/IMediaPlayer;->setOnVideoSizeChangedListener(Lcom/fimi/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 404
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v4, v5}, Lcom/fimi/player/IMediaPlayer;->setOnCompletionListener(Lcom/fimi/player/IMediaPlayer$OnCompletionListener;)V

    .line 405
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v4, v5}, Lcom/fimi/player/IMediaPlayer;->setOnErrorListener(Lcom/fimi/player/IMediaPlayer$OnErrorListener;)V

    .line 406
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v4, v5}, Lcom/fimi/player/IMediaPlayer;->setOnInfoListener(Lcom/fimi/player/IMediaPlayer$OnInfoListener;)V

    .line 407
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mBufferingUpdateListener:Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v4, v5}, Lcom/fimi/player/IMediaPlayer;->setOnBufferingUpdateListener(Lcom/fimi/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 408
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaQualityListener:Lcom/fimi/player/IMediaPlayer$MediaQualityListener;

    invoke-interface {v4, v5}, Lcom/fimi/player/IMediaPlayer;->setMediaQualityListener(Lcom/fimi/player/IMediaPlayer$MediaQualityListener;)V

    .line 409
    const/4 v4, 0x0

    iput v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentBufferPercentage:I

    .line 411
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->liveVideoListener:Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;

    invoke-interface {v4, v5}, Lcom/fimi/player/IMediaPlayer;->setOnLiveVideoListener(Lcom/fimi/player/IMediaPlayer$OnLiveVideoListener;)V

    .line 419
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-le v4, v5, :cond_3

    .line 420
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/fimi/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/fimi/player/widget/FimiVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v4, v5, v6, v7}, Lcom/fimi/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 424
    :goto_1
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    invoke-direct {p0, v4, v5}, Lcom/fimi/player/widget/FimiVideoView;->bindSurfaceHolder(Lcom/fimi/player/IMediaPlayer;Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;)V

    .line 425
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lcom/fimi/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 426
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/fimi/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 427
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v4}, Lcom/fimi/player/IMediaPlayer;->prepareAsync()V

    .line 433
    const/4 v4, 0x1

    iput v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 434
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 435
    .end local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 436
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    const/4 v4, -0x1

    iput v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 438
    const/4 v4, -0x1

    iput v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    .line 439
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/fimi/player/IMediaPlayer$OnErrorListener;->onError(Lcom/fimi/player/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 447
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 449
    throw v4

    .line 422
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/fimi/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 441
    .end local v1    # "context":Landroid/content/Context;
    :catch_1
    move-exception v2

    .line 442
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    const/4 v4, -0x1

    iput v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 444
    const/4 v4, -0x1

    iput v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    .line 445
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->mErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    iget-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lcom/fimi/player/IMediaPlayer$OnErrorListener;->onError(Lcom/fimi/player/IMediaPlayer;II)Z
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
    .line 270
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    .line 271
    iput-object p2, p0, Lcom/fimi/player/widget/FimiVideoView;->mHeaders:Ljava/util/Map;

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSeekWhenPrepared:I

    .line 273
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-nez v0, :cond_0

    .line 274
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->decodeType:I

    invoke-direct {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->openVideo(I)V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->requestLayout()V

    .line 277
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->invalidate()V

    .line 278
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    invoke-interface {v0}, Lcom/fimi/player/widget/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    invoke-interface {v0}, Lcom/fimi/player/widget/IMediaController;->hide()V

    .line 865
    :goto_0
    return-void

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    invoke-interface {v0}, Lcom/fimi/player/widget/IMediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 987
    iget-boolean v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public clearUri()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    .line 245
    return-void
.end method

.method public drawBackground(Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;)V
    .locals 7
    .param p1, "holder"    # Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    .prologue
    const/4 v6, 0x0

    .line 757
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->paint:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    .line 758
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->paint:Landroid/graphics/Paint;

    .line 759
    :cond_0
    invoke-interface {p1}, Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 760
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    .line 761
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 762
    const-string v4, "peter"

    const-string v5, "get canvas"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 764
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->paint:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 765
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->getHeight()I

    move-result v1

    .line 766
    .local v1, "h":I
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->getWidth()I

    move-result v3

    .line 767
    .local v3, "w":I
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 768
    .local v2, "rectF":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/fimi/player/widget/FimiVideoView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 769
    invoke-interface {p1}, Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 771
    .end local v1    # "h":I
    .end local v2    # "rectF":Landroid/graphics/RectF;
    .end local v3    # "w":I
    :cond_1
    return-void
.end method

.method public enterBackground()V
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-static {v0}, Lcom/fimi/player/MediaPlayerService;->setMediaPlayer(Lcom/fimi/player/IMediaPlayer;)V

    .line 1142
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 954
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentBufferPercentage:I

    .line 956
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 933
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 925
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getmCurrentState()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer;->isPlaying()Z

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
    .locals 1

    .prologue
    .line 961
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 962
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->pause()V

    .line 966
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 820
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

    .line 827
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    if-eqz v2, :cond_8

    .line 828
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 830
    :cond_0
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/fimi/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 831
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->pause()V

    .line 832
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    invoke-interface {v2}, Lcom/fimi/player/widget/IMediaController;->show()V

    .line 856
    :cond_1
    :goto_1
    return v1

    .line 820
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 834
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_3
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->start()V

    .line 835
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    invoke-interface {v2}, Lcom/fimi/player/widget/IMediaController;->hide()V

    goto :goto_1

    .line 838
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 839
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/fimi/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 840
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->start()V

    .line 841
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    invoke-interface {v2}, Lcom/fimi/player/widget/IMediaController;->hide()V

    goto :goto_1

    .line 844
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 846
    :cond_6
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/fimi/player/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->pause()V

    .line 848
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    invoke-interface {v2}, Lcom/fimi/player/widget/IMediaController;->show()V

    goto :goto_1

    .line 852
    :cond_7
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->toggleMediaControlsVisiblity()V

    .line 856
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    if-eqz v0, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->toggleMediaControlsVisiblity()V

    .line 807
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    if-eqz v0, :cond_0

    .line 813
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->toggleMediaControlsVisiblity()V

    .line 815
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 897
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-nez v0, :cond_0

    .line 909
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer;->pause()V

    .line 901
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer;->pause()V

    .line 904
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 908
    :cond_1
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    goto :goto_0
.end method

.method public release(Z)V
    .locals 4
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 784
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/player/IMediaPlayer;->stop()V

    .line 788
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/player/IMediaPlayer;->release()V

    .line 789
    iput-object v3, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    .line 791
    iput v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 792
    if-eqz p1, :cond_0

    .line 793
    iput v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    .line 795
    :cond_0
    const-string v1, "moweiru"

    const-string v2, "cleartargetstate=="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 798
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 800
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public releaseWithoutStop()V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->release(Z)V

    .line 778
    :cond_0
    return-void
.end method

.method public declared-synchronized restart()V
    .locals 2

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->release(Z)V

    .line 307
    :cond_0
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->decodeType:I

    invoke-direct {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->openVideo(I)V

    .line 308
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/player/IMediaPlayer;->setPreview(I)V

    .line 310
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_1
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->decodeType:I

    invoke-direct {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->openVideo(I)V

    .line 917
    return-void
.end method

.method public saveEmergencyFlightVideo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/fimi/player/IMediaPlayer;->recEmergencySave(Ljava/lang/String;I)I

    .line 332
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "msec"    # I

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/fimi/player/IMediaPlayer;->seekTo(J)V

    .line 940
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSeekWhenPrepared:I

    .line 944
    :goto_0
    return-void

    .line 942
    :cond_0
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setDecodeType(I)V
    .locals 0
    .param p1, "decodeType"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/fimi/player/widget/FimiVideoView;->decodeType:I

    .line 297
    return-void
.end method

.method public setHideSurfaceView(Z)V
    .locals 2
    .param p1, "isVisiable"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    instance-of v0, v0, Lcom/fimi/player/widget/SurfaceRenderView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    check-cast v0, Lcom/fimi/player/widget/SurfaceRenderView;

    invoke-virtual {v0}, Lcom/fimi/player/widget/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, -0x2

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 205
    :cond_0
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setMediaController(Lcom/fimi/player/widget/IMediaController;)V
    .locals 1
    .param p1, "controller"    # Lcom/fimi/player/widget/IMediaController;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    invoke-interface {v0}, Lcom/fimi/player/widget/IMediaController;->hide()V

    .line 456
    :cond_0
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaController:Lcom/fimi/player/widget/IMediaController;

    .line 457
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->attachMediaController()V

    .line 458
    return-void
.end method

.method public setOnCompletionListener(Lcom/fimi/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mOnCompletionListener:Lcom/fimi/player/IMediaPlayer$OnCompletionListener;

    .line 653
    return-void
.end method

.method public setOnErrorListener(Lcom/fimi/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mOnErrorListener:Lcom/fimi/player/IMediaPlayer$OnErrorListener;

    .line 665
    return-void
.end method

.method public setOnFileCallBackListener(Lcom/fimi/player/widget/FimiVideoView$OnFimiFileCallBackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/widget/FimiVideoView$OnFimiFileCallBackListener;

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mFimiFileCallBackListener:Lcom/fimi/player/widget/FimiVideoView$OnFimiFileCallBackListener;

    .line 1121
    return-void
.end method

.method public setOnInfoListener(Lcom/fimi/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mOnInfoListener:Lcom/fimi/player/IMediaPlayer$OnInfoListener;

    .line 675
    return-void
.end method

.method public setOnPreparedListener(Lcom/fimi/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mOnPreparedListener:Lcom/fimi/player/IMediaPlayer$OnPreparedListener;

    .line 638
    return-void
.end method

.method public setOnPreviewCallBackListener(Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mPreviewCallBackListener:Lcom/fimi/player/widget/FimiVideoView$OnFimiPreviewCallBackListener;

    .line 1117
    return-void
.end method

.method public setPreview()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/player/IMediaPlayer;->setPreview(I)V

    .line 874
    :cond_0
    return-void
.end method

.method public setRender(I)V
    .locals 7
    .param p1, "render"    # I

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 229
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->TAG:Ljava/lang/String;

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

    .line 232
    :goto_0
    return-void

    .line 210
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fimi/player/widget/FimiVideoView;->setRenderView(Lcom/fimi/player/widget/IRenderView;)V

    goto :goto_0

    .line 213
    :pswitch_1
    new-instance v0, Lcom/fimi/player/widget/TextureRenderView;

    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fimi/player/widget/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, "renderView":Lcom/fimi/player/widget/TextureRenderView;
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/fimi/player/widget/TextureRenderView;->getSurfaceHolder()Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v1, v2}, Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Lcom/fimi/player/IMediaPlayer;)V

    .line 216
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/fimi/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/player/widget/TextureRenderView;->setVideoSize(II)V

    .line 217
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v2}, Lcom/fimi/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/player/widget/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 218
    iget v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    invoke-virtual {v0, v1}, Lcom/fimi/player/widget/TextureRenderView;->setAspectRatio(I)V

    .line 220
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->setRenderView(Lcom/fimi/player/widget/IRenderView;)V

    goto :goto_0

    .line 224
    .end local v0    # "renderView":Lcom/fimi/player/widget/TextureRenderView;
    :pswitch_2
    new-instance v0, Lcom/fimi/player/widget/SurfaceRenderView;

    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fimi/player/widget/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "renderView":Lcom/fimi/player/widget/SurfaceRenderView;
    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->setRenderView(Lcom/fimi/player/widget/IRenderView;)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setRenderView(Lcom/fimi/player/widget/IRenderView;)V
    .locals 6
    .param p1, "renderView"    # Lcom/fimi/player/widget/IRenderView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 164
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v2, v5}, Lcom/fimi/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    invoke-interface {v2}, Lcom/fimi/player/widget/IRenderView;->getView()Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, "renderUIView":Landroid/view/View;
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/player/widget/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Lcom/fimi/player/widget/IRenderView;->removeRenderCallback(Lcom/fimi/player/widget/IRenderView$IRenderCallback;)V

    .line 170
    iput-object v5, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    .line 171
    invoke-virtual {p0, v1}, Lcom/fimi/player/widget/FimiVideoView;->removeView(Landroid/view/View;)V

    .line 174
    .end local v1    # "renderUIView":Landroid/view/View;
    :cond_1
    if-nez p1, :cond_2

    .line 193
    :goto_0
    return-void

    .line 177
    :cond_2
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    .line 178
    iget v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    invoke-interface {p1, v2}, Lcom/fimi/player/widget/IRenderView;->setAspectRatio(I)V

    .line 179
    iget v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoWidth:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoHeight:I

    if-lez v2, :cond_3

    .line 180
    iget v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoWidth:I

    iget v3, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoHeight:I

    invoke-interface {p1, v2, v3}, Lcom/fimi/player/widget/IRenderView;->setVideoSize(II)V

    .line 181
    :cond_3
    iget v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoSarNum:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoSarDen:I

    if-lez v2, :cond_4

    .line 182
    iget v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoSarNum:I

    iget v3, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoSarDen:I

    invoke-interface {p1, v2, v3}, Lcom/fimi/player/widget/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 184
    :cond_4
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    invoke-interface {v2}, Lcom/fimi/player/widget/IRenderView;->getView()Landroid/view/View;

    move-result-object v1

    .line 185
    .restart local v1    # "renderUIView":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 189
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/fimi/player/widget/FimiVideoView;->addView(Landroid/view/View;)V

    .line 191
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    iget-object v3, p0, Lcom/fimi/player/widget/FimiVideoView;->mSHCallback:Lcom/fimi/player/widget/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Lcom/fimi/player/widget/IRenderView;->addRenderCallback(Lcom/fimi/player/widget/IRenderView$IRenderCallback;)V

    .line 192
    iget-object v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    iget v3, p0, Lcom/fimi/player/widget/FimiVideoView;->mVideoRotationDegree:I

    invoke-interface {v2, v3}, Lcom/fimi/player/widget/IRenderView;->setVideoRotation(I)V

    goto :goto_0
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mUri:Landroid/net/Uri;

    .line 249
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 241
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fimi/player/widget/FimiVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 257
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isM"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    instance-of v0, v0, Lcom/fimi/player/widget/SurfaceRenderView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    check-cast v0, Lcom/fimi/player/widget/SurfaceRenderView;

    invoke-virtual {v0, p1}, Lcom/fimi/player/widget/SurfaceRenderView;->setZOrderMediaOverlay(Z)V

    .line 199
    :cond_0
    return-void
.end method

.method public setmMediaQualityListener(Lcom/fimi/player/IMediaPlayer$MediaQualityListener;)V
    .locals 0
    .param p1, "mMediaQualityListener"    # Lcom/fimi/player/IMediaPlayer$MediaQualityListener;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaQualityListener:Lcom/fimi/player/IMediaPlayer$MediaQualityListener;

    .line 643
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 886
    invoke-direct {p0}, Lcom/fimi/player/widget/FimiVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer;->start()V

    .line 889
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 891
    :cond_0
    iput v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    .line 892
    return-void
.end method

.method public startFlightVideo(Ljava/lang/String;II)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "time"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/player/IMediaPlayer;->recStart(Ljava/lang/String;II)I

    .line 324
    :cond_0
    return-void
.end method

.method public startLiveVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/fimi/player/widget/FimiVideoView;->liveUrl:Ljava/lang/String;

    .line 1081
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->liveUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->liveUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/fimi/player/IMediaPlayer;->playerRtmpStart(Ljava/lang/String;I)I

    .line 1084
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->liveUrl:Ljava/lang/String;

    .line 1087
    :cond_0
    return-void
.end method

.method public startPlay()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-nez v0, :cond_0

    .line 350
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->decodeType:I

    invoke-direct {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->openVideo(I)V

    .line 351
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/player/IMediaPlayer;->setPreview(I)V

    .line 353
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->start()V

    .line 357
    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mSurfaceHolder:Lcom/fimi/player/widget/IRenderView$ISurfaceHolder;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/player/IMediaPlayer;->setPreview(I)V

    .line 317
    invoke-virtual {p0}, Lcom/fimi/player/widget/FimiVideoView;->start()V

    .line 319
    :cond_0
    return-void
.end method

.method public stopBackgroundPlay()V
    .locals 1

    .prologue
    .line 1136
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fimi/player/MediaPlayerService;->setMediaPlayer(Lcom/fimi/player/IMediaPlayer;)V

    .line 1137
    return-void
.end method

.method public stopFlightVideo()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/fimi/player/IMediaPlayer;->recStop()I

    .line 328
    :cond_0
    return-void
.end method

.method public stopLiveVideo()V
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/player/IMediaPlayer;->playerRtmpStop(I)I

    .line 1095
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->liveUrl:Ljava/lang/String;

    .line 1097
    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->release(Z)V

    .line 344
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 284
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/player/IMediaPlayer;->stop()V

    .line 286
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    invoke-interface {v1}, Lcom/fimi/player/IMediaPlayer;->release()V

    .line 287
    iput-object v3, p0, Lcom/fimi/player/widget/FimiVideoView;->mMediaPlayer:Lcom/fimi/player/IMediaPlayer;

    .line 288
    iput v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentState:I

    .line 289
    iput v2, p0, Lcom/fimi/player/widget/FimiVideoView;->mTargetState:I

    .line 290
    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 291
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 293
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->release(Z)V

    .line 913
    return-void
.end method

.method public toggleAspectRatio()I
    .locals 2

    .prologue
    .line 1019
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 1020
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    sget-object v1, Lcom/fimi/player/widget/FimiVideoView;->s_allAspectRatio:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 1022
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 1023
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    iget v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    invoke-interface {v0, v1}, Lcom/fimi/player/widget/IRenderView;->setAspectRatio(I)V

    .line 1025
    :cond_0
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    return v0
.end method

.method public toggleAspectRatioPOi()I
    .locals 2

    .prologue
    .line 1029
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 1030
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    sget-object v1, Lcom/fimi/player/widget/FimiVideoView;->s_allAspectRatio:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatioIndex:I

    .line 1032
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    .line 1033
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mRenderView:Lcom/fimi/player/widget/IRenderView;

    iget v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    invoke-interface {v0, v1}, Lcom/fimi/player/widget/IRenderView;->setAspectRatio(I)V

    .line 1035
    :cond_0
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentAspectRatio:I

    return v0
.end method

.method public toggleRender()I
    .locals 2

    .prologue
    .line 1066
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 1067
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    iget-object v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    .line 1069
    iget-object v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRender:I

    .line 1070
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Lcom/fimi/player/widget/FimiVideoView;->setRender(I)V

    .line 1071
    iget v0, p0, Lcom/fimi/player/widget/FimiVideoView;->mCurrentRender:I

    return v0
.end method
