.class public Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;
.super Landroid/widget/RelativeLayout;
.source "X8CustomVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;,
        Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ImageLoaderListener;,
        Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ADFrameImageLoadListener;,
        Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;
    }
.end annotation


# static fields
.field private static final LOAD_TOTAL_COUNT:I = 0x3

.field private static final STATE_ERROR:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSE:I = 0x2

.field private static final STATE_PLAYING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CustomVideoView"

.field private static final TIME_INVAL:I = 0x3e8

.field private static final TIME_MSG:I = 0x1

.field private static VIDEO_HEIGHT_PERCENT:F


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private canPlay:Z

.field private isMute:Z

.field private isUpdateProgressed:Z

.field private listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

.field private mBottomPlayRl:Landroid/widget/RelativeLayout;

.field private mBtnPlayMax:Landroid/widget/Button;

.field private mCurrentCount:I

.field private mCurrentTimeTv:Landroid/widget/TextView;

.field private mDestationHeight:I

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mHandler:Landroid/os/Handler;

.field private mIsComplete:Z

.field private mIsRealPause:Z

.field private mLoadingBar:Landroid/widget/ProgressBar;

.field private mMiniPlayBtn:Landroid/widget/ImageButton;

.field private mParentContainar:Landroid/view/ViewGroup;

.field private mPlaySb:Landroid/widget/SeekBar;

.field private mPlayerView:Landroid/widget/RelativeLayout;

.field private mScreenEventReciver:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;

.field private mScreenWidth:I

.field private mTotalTime:Ljava/lang/String;

.field private mTotalTimeTv:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mVideoView:Landroid/view/TextureView;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playerState:I

.field private showTopBottomBarTime:I

.field private videoSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/high16 v0, 0x3f100000    # 0.5625f

    sput v0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->VIDEO_HEIGHT_PERCENT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentContainer"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->canPlay:Z

    .line 59
    iput v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showTopBottomBarTime:I

    .line 70
    iput v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->playerState:I

    .line 80
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isUpdateProgressed:Z

    .line 88
    new-instance v0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;-><init>(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object p2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mParentContainar:Landroid/view/ViewGroup;

    .line 135
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->audioManager:Landroid/media/AudioManager;

    .line 136
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->initDate()V

    .line 137
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->initView()V

    .line 138
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->registerBroadcastReceiver()V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isUpdateProgressed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlaySb:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setTimeFormatter(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mCurrentTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    .prologue
    .line 43
    iget v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->playerState:I

    return v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mIsRealPause:Z

    return v0
.end method

.method private declared-synchronized checkMediaPlayer()V
    .locals 1

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->createMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :cond_0
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createMediaPlayer()Landroid/media/MediaPlayer;
    .locals 2

    .prologue
    .line 486
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 487
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 488
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 489
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 490
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 491
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 492
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 493
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->videoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->videoSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->videoSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->stop()V

    goto :goto_0
.end method

.method private entryResumeState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 505
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->canPlay:Z

    .line 506
    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setCurrentPlayState(I)V

    .line 507
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setIsRealPause(Z)V

    .line 508
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setIsComplete(Z)V

    .line 509
    return-void
.end method

.method private initDate()V
    .locals 5

    .prologue
    .line 142
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 143
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 144
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 145
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mScreenWidth:I

    .line 146
    iget v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mScreenWidth:I

    int-to-float v2, v2

    sget v3, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->VIDEO_HEIGHT_PERCENT:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mDestationHeight:I

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 148
    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mFormatter:Ljava/util/Formatter;

    .line 149
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 152
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 153
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_custom_video_view:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    .line 154
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    sget v3, Lcom/fimi/app/x8s/R$id;->load_iv:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mLoadingBar:Landroid/widget/ProgressBar;

    .line 157
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    sget v3, Lcom/fimi/app/x8s/R$id;->play_video_textureview:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mVideoView:Landroid/view/TextureView;

    .line 158
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    sget v3, Lcom/fimi/app/x8s/R$id;->btn_play_max:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBtnPlayMax:Landroid/widget/Button;

    .line 159
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBtnPlayMax:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mVideoView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mVideoView:Landroid/view/TextureView;

    invoke-virtual {v2, v5}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 162
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mVideoView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 164
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    sget v3, Lcom/fimi/app/x8s/R$id;->bottom_play_rl:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    .line 165
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    sget v3, Lcom/fimi/app/x8s/R$id;->play_btn:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    .line 166
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    sget v3, Lcom/fimi/app/x8s/R$id;->play_sb:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlaySb:Landroid/widget/SeekBar;

    .line 167
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlaySb:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 169
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    sget v3, Lcom/fimi/app/x8s/R$id;->time_current_tv:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mCurrentTimeTv:Landroid/widget/TextView;

    .line 171
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mCurrentTimeTv:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setTimeFormatter(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    sget v3, Lcom/fimi/app/x8s/R$id;->total_time_tv:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mTotalTimeTv:Landroid/widget/TextView;

    .line 173
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mTotalTimeTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mTotalTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showBar(Z)V

    .line 176
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mScreenWidth:I

    iget v3, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mDestationHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 180
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mTotalTimeTv:Landroid/widget/TextView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mCurrentTimeTv:Landroid/widget/TextView;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 182
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mScreenEventReciver:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;-><init>(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$1;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mScreenEventReciver:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mScreenEventReciver:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setCurrentPlayState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 469
    iput p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->playerState:I

    .line 470
    return-void
.end method

.method private setTimeFormatter(I)Ljava/lang/String;
    .locals 11
    .param p1, "timeMs"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 620
    div-int/lit16 v3, p1, 0x3e8

    .line 622
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 623
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 624
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 626
    .local v0, "hours":I
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 627
    if-lez v0, :cond_0

    .line 628
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 630
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private showLoadingView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 578
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mLoadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->album_btn_media_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 580
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBtnPlayMax:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 581
    iput v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showTopBottomBarTime:I

    .line 583
    return-void
.end method

.method private showPauseView(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    .line 571
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mLoadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 572
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    sget v0, Lcom/fimi/app/x8s/R$drawable;->album_btn_media_stop_selector:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 573
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBtnPlayMax:Landroid/widget/Button;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 575
    return-void

    .line 572
    :cond_0
    sget v0, Lcom/fimi/app/x8s/R$drawable;->album_btn_media_play_selector:I

    goto :goto_0

    .line 573
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private showPlayView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 586
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mLoadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->album_btn_media_stop_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 588
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBtnPlayMax:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showTopBottomBarTime:I

    .line 591
    return-void
.end method

.method private unRegisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mScreenEventReciver:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mScreenEventReciver:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$ScreenEventReciver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    :cond_0
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 438
    const-string v0, "CustomVideoView"

    const-string v1, "do destory"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 441
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 442
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 443
    iput-object v3, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 445
    :cond_0
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setCurrentPlayState(I)V

    .line 446
    iput v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mCurrentCount:I

    .line 447
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setIsComplete(Z)V

    .line 448
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setIsRealPause(Z)V

    .line 449
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->unRegisterBroadcastReceiver()V

    .line 450
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 451
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showPauseView(Z)V

    .line 452
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoPause(Z)V

    .line 453
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 604
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 611
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mIsComplete:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRealPause()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mIsRealPause:Z

    return v0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 357
    const-string v1, "CustomVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->playerState:I

    if-eqz v1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showLoadingView()V

    .line 363
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setCurrentPlayState(I)V

    .line 364
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->checkMediaPlayer()V

    .line 365
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mute(Z)V

    .line 366
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->stop()V

    goto :goto_0
.end method

.method public mute(Z)V
    .locals 2
    .param p1, "mute"    # Z

    .prologue
    .line 524
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isMute:Z

    .line 525
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 526
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isMute:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 527
    .local v0, "volume":F
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 529
    .end local v0    # "volume":F
    :cond_0
    return-void

    .line 526
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I

    .prologue
    .line 645
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/fimi/app/x8s/R$id;->play_video_textureview:I

    if-ne v1, v2, :cond_2

    .line 198
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v1, v3}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->showBar(Z)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iput v3, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showTopBottomBarTime:I

    .line 203
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->showBar(Z)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/fimi/app/x8s/R$id;->play_btn:I

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_play_max:I

    if-ne v1, v2, :cond_0

    .line 220
    :cond_3
    new-instance v0, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;

    invoke-direct {v0}, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;-><init>()V

    .line 221
    .local v0, "info":Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;->setPath(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mTotalTime:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mTotalTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;->setDuration(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v1, v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onClickPlay(Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x1

    .line 318
    const-string v0, "CustomVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlaySb:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 320
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoLoadComplete()V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->playBack()V

    .line 324
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setIsComplete(Z)V

    .line 325
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setIsRealPause(Z)V

    .line 327
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    const-string v0, "CustomVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iput v4, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->playerState:I

    .line 338
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 339
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 342
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mCurrentCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 343
    invoke-direct {p0, v3}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showPauseView(Z)V

    .line 344
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0, v4}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoPause(Z)V

    .line 346
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoLoadFailed()V

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->stop()V

    .line 350
    return v3
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 300
    const-string v0, "CustomVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepare:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showPlayView()V

    .line 302
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mPlaySb:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 303
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mTotalTimeTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->getDuration()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setTimeFormatter(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mCurrentCount:I

    .line 308
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoLoadSuccess()V

    .line 311
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setCurrentPlayState(I)V

    .line 312
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->resume()V

    .line 314
    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 649
    if-eqz p3, :cond_0

    .line 650
    const-string v0, "CustomVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isUpdateProgressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isUpdateProgressed:Z

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showTopBottomBarTime:I

    .line 653
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mCurrentTimeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setTimeFormatter(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 659
    const-string v0, "CustomVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isUpdateProgressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isUpdateProgressed:Z

    .line 661
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showTopBottomBarTime:I

    .line 663
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 667
    const-string v0, "CustomVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isUpdateProgressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isUpdateProgressed:Z

    .line 669
    iget v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->playerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 670
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->seekAndResume(I)V

    .line 672
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 250
    const-string v0, "CustomVideoView"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->videoSurface:Landroid/view/Surface;

    .line 252
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->checkMediaPlayer()V

    .line 253
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->videoSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 255
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 259
    const-string v0, "CustomVideoView"

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 270
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 285
    const-string v0, "CustomVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 287
    if-nez p2, :cond_2

    iget v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isRealPause()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->pause()V

    .line 296
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->resume()V

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    iget v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 405
    :cond_0
    const-string v0, "CustomVideoView"

    const-string v1, "do full pause"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setCurrentPlayState(I)V

    .line 407
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 409
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->canPlay:Z

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 413
    :cond_1
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showPauseView(Z)V

    .line 414
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoPause(Z)V

    .line 415
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public playBack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 456
    const-string v0, "CustomVideoView"

    const-string v1, " do play back"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setCurrentPlayState(I)V

    .line 458
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 461
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 462
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 464
    :cond_0
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showPauseView(Z)V

    .line 465
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoPause(Z)V

    .line 466
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 419
    iget v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->playerState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mute(Z)V

    .line 423
    const-string v0, "CustomVideoView"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->entryResumeState()V

    .line 426
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 427
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 428
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 429
    invoke-direct {p0, v3}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showPauseView(Z)V

    .line 430
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0, v3}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoPause(Z)V

    goto :goto_0

    .line 432
    :cond_1
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showPauseView(Z)V

    .line 433
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoPause(Z)V

    goto :goto_0
.end method

.method public seekAndPause(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 551
    iget v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showPauseView(Z)V

    .line 555
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoPause(Z)V

    .line 556
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setCurrentPlayState(I)V

    .line 557
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 559
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$3;-><init>(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    goto :goto_0
.end method

.method public seekAndResume(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 533
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 534
    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showPauseView(Z)V

    .line 535
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoPause(Z)V

    .line 536
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->entryResumeState()V

    .line 537
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 538
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$2;-><init>(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 547
    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mUrl:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setIsComplete(Z)V
    .locals 0
    .param p1, "isComplete"    # Z

    .prologue
    .line 512
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mIsComplete:Z

    .line 513
    return-void
.end method

.method public setIsRealPause(Z)V
    .locals 0
    .param p1, "isRealPause"    # Z

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mIsRealPause:Z

    .line 517
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    .line 713
    return-void
.end method

.method public setTotalTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "totalTime"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mTotalTime:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mTotalTimeTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mTotalTimeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mTotalTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    return-void
.end method

.method public showBar(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 594
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->showBar(Z)V

    .line 598
    :cond_0
    return-void

    .line 594
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 379
    const-string v0, "CustomVideoView"

    const-string v1, "do stop"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 382
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 383
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 384
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 385
    iput-object v3, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 388
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->setCurrentPlayState(I)V

    .line 389
    iget v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mCurrentCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 390
    iget v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mCurrentCount:I

    .line 391
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->load()V

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showPauseView(Z)V

    .line 394
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->onVideoPause(Z)V

    goto :goto_0
.end method

.method public timeFunction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const-string v0, "CustomVideoView"

    const-string v1, "handleMessage:visible"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showTopBottomBarTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showTopBottomBarTime:I

    .line 122
    iget v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showTopBottomBarTime:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 123
    iput v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showTopBottomBarTime:I

    .line 124
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showBar(Z)V

    .line 125
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->listener:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;

    invoke-interface {v0, v2}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;->showBar(Z)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iput v2, p0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;->showTopBottomBarTime:I

    goto :goto_0
.end method
