.class public Lcom/fimi/album/widget/CustomVideoView;
.super Landroid/widget/RelativeLayout;
.source "CustomVideoView.java"

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
        Lcom/fimi/album/widget/CustomVideoView$ScreenEventReciver;,
        Lcom/fimi/album/widget/CustomVideoView$ImageLoaderListener;,
        Lcom/fimi/album/widget/CustomVideoView$ADFrameImageLoadListener;,
        Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;
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

.field private listener:Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

.field private mBottomPlayRl:Landroid/widget/RelativeLayout;

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

.field private mPlayBackIBtn:Landroid/widget/ImageButton;

.field private mPlaySb:Landroid/widget/SeekBar;

.field private mPlayerView:Landroid/widget/RelativeLayout;

.field private mScreenEventReciver:Lcom/fimi/album/widget/CustomVideoView$ScreenEventReciver;

.field private mScreenWidth:I

.field private mTopBarLl:Landroid/widget/LinearLayout;

.field private mTotalTimeTv:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mVideoView:Landroid/view/TextureView;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private nameTv:Landroid/widget/TextView;

.field private playerState:I

.field private showTopBottomBarTime:I

.field private videoSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/high16 v0, 0x3f100000    # 0.5625f

    sput v0, Lcom/fimi/album/widget/CustomVideoView;->VIDEO_HEIGHT_PERCENT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentContainer"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/album/widget/CustomVideoView;->canPlay:Z

    .line 56
    iput v1, p0, Lcom/fimi/album/widget/CustomVideoView;->showTopBottomBarTime:I

    .line 69
    iput v1, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    .line 79
    iput-boolean v1, p0, Lcom/fimi/album/widget/CustomVideoView;->isUpdateProgressed:Z

    .line 86
    new-instance v0, Lcom/fimi/album/widget/CustomVideoView$1;

    invoke-direct {v0, p0}, Lcom/fimi/album/widget/CustomVideoView$1;-><init>(Lcom/fimi/album/widget/CustomVideoView;)V

    iput-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p2, p0, Lcom/fimi/album/widget/CustomVideoView;->mParentContainar:Landroid/view/ViewGroup;

    .line 133
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->audioManager:Landroid/media/AudioManager;

    .line 134
    invoke-direct {p0}, Lcom/fimi/album/widget/CustomVideoView;->initDate()V

    .line 135
    invoke-direct {p0}, Lcom/fimi/album/widget/CustomVideoView;->initView()V

    .line 136
    invoke-direct {p0}, Lcom/fimi/album/widget/CustomVideoView;->registerBroadcastReceiver()V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/album/widget/CustomVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/widget/CustomVideoView;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/fimi/album/widget/CustomVideoView;->isUpdateProgressed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/album/widget/CustomVideoView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/widget/CustomVideoView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlaySb:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/album/widget/CustomVideoView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/widget/CustomVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/fimi/album/widget/CustomVideoView;->setTimeFormatter(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/album/widget/CustomVideoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/widget/CustomVideoView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mCurrentTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/album/widget/CustomVideoView;)Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/widget/CustomVideoView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->listener:Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/album/widget/CustomVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/widget/CustomVideoView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/album/widget/CustomVideoView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/widget/CustomVideoView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/album/widget/CustomVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/widget/CustomVideoView;

    .prologue
    .line 40
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    return v0
.end method

.method static synthetic access$900(Lcom/fimi/album/widget/CustomVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/widget/CustomVideoView;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mIsRealPause:Z

    return v0
.end method

.method private declared-synchronized checkMediaPlayer()V
    .locals 1

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/fimi/album/widget/CustomVideoView;->createMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :cond_0
    monitor-exit p0

    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createMediaPlayer()Landroid/media/MediaPlayer;
    .locals 2

    .prologue
    .line 461
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 462
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 463
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 464
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 465
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 466
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 467
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 468
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->videoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->videoSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->videoSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 473
    :goto_0
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->stop()V

    goto :goto_0
.end method

.method private entryResumeState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 480
    iput-boolean v1, p0, Lcom/fimi/album/widget/CustomVideoView;->canPlay:Z

    .line 481
    invoke-direct {p0, v1}, Lcom/fimi/album/widget/CustomVideoView;->setCurrentPlayState(I)V

    .line 482
    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/CustomVideoView;->setIsRealPause(Z)V

    .line 483
    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/CustomVideoView;->setIsComplete(Z)V

    .line 484
    return-void
.end method

.method private initDate()V
    .locals 5

    .prologue
    .line 140
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 141
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 142
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 143
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mScreenWidth:I

    .line 144
    iget v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mScreenWidth:I

    int-to-float v2, v2

    sget v3, Lcom/fimi/album/widget/CustomVideoView;->VIDEO_HEIGHT_PERCENT:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mDestationHeight:I

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 146
    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/fimi/album/widget/CustomVideoView;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mFormatter:Ljava/util/Formatter;

    .line 147
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 151
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/example/album/R$layout;->album_custom_video_view:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    .line 152
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    sget v3, Lcom/example/album/R$id;->load_iv:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mLoadingBar:Landroid/widget/ProgressBar;

    .line 155
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    sget v3, Lcom/example/album/R$id;->play_video_textureview:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mVideoView:Landroid/view/TextureView;

    .line 156
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mVideoView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mVideoView:Landroid/view/TextureView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 158
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mVideoView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 160
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    sget v3, Lcom/example/album/R$id;->shoto_top_tab_ll:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mTopBarLl:Landroid/widget/LinearLayout;

    .line 161
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    sget v3, Lcom/example/album/R$id;->bottom_play_rl:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    .line 162
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    sget v3, Lcom/example/album/R$id;->play_btn:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    .line 163
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    sget v3, Lcom/example/album/R$id;->play_sb:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlaySb:Landroid/widget/SeekBar;

    .line 164
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlaySb:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 165
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    sget v3, Lcom/example/album/R$id;->time_current_tv:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mCurrentTimeTv:Landroid/widget/TextView;

    .line 167
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    sget v3, Lcom/example/album/R$id;->total_time_tv:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mTotalTimeTv:Landroid/widget/TextView;

    .line 168
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->showBar(Z)V

    .line 169
    sget v2, Lcom/example/album/R$id;->photo_name_tv:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->nameTv:Landroid/widget/TextView;

    .line 170
    sget v2, Lcom/example/album/R$id;->media_back_btn:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlayBackIBtn:Landroid/widget/ImageButton;

    .line 171
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlayBackIBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mScreenWidth:I

    iget v3, p0, Lcom/fimi/album/widget/CustomVideoView;->mDestationHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 176
    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlayerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->mScreenEventReciver:Lcom/fimi/album/widget/CustomVideoView$ScreenEventReciver;

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Lcom/fimi/album/widget/CustomVideoView$ScreenEventReciver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fimi/album/widget/CustomVideoView$ScreenEventReciver;-><init>(Lcom/fimi/album/widget/CustomVideoView;Lcom/fimi/album/widget/CustomVideoView$1;)V

    iput-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->mScreenEventReciver:Lcom/fimi/album/widget/CustomVideoView$ScreenEventReciver;

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mScreenEventReciver:Lcom/fimi/album/widget/CustomVideoView$ScreenEventReciver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setCurrentPlayState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 444
    iput p1, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    .line 445
    return-void
.end method

.method private setTimeFormatter(I)Ljava/lang/String;
    .locals 11
    .param p1, "timeMs"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 588
    div-int/lit16 v3, p1, 0x3e8

    .line 590
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 591
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 592
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 594
    .local v0, "hours":I
    iget-object v4, p0, Lcom/fimi/album/widget/CustomVideoView;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 595
    if-lez v0, :cond_0

    .line 596
    iget-object v4, p0, Lcom/fimi/album/widget/CustomVideoView;->mFormatter:Ljava/util/Formatter;

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

    .line 598
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/fimi/album/widget/CustomVideoView;->mFormatter:Ljava/util/Formatter;

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

.method private showBar(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 564
    iget-object v3, p0, Lcom/fimi/album/widget/CustomVideoView;->mTopBarLl:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 566
    return-void

    :cond_0
    move v0, v2

    .line 564
    goto :goto_0

    :cond_1
    move v1, v2

    .line 565
    goto :goto_1
.end method

.method private showLoadingView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 550
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mLoadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/example/album/R$drawable;->album_icon_play_media:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 552
    iput v2, p0, Lcom/fimi/album/widget/CustomVideoView;->showTopBottomBarTime:I

    .line 554
    return-void
.end method

.method private showPauseView(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 544
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mLoadingBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    sget v0, Lcom/example/album/R$drawable;->album_btn_pause_media:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 547
    return-void

    .line 545
    :cond_0
    sget v0, Lcom/example/album/R$drawable;->album_icon_play_media:I

    goto :goto_0
.end method

.method private showPlayView()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mLoadingBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/example/album/R$drawable;->album_btn_pause_media:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 559
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/widget/CustomVideoView;->showTopBottomBarTime:I

    .line 561
    return-void
.end method

.method private unRegisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mScreenEventReciver:Lcom/fimi/album/widget/CustomVideoView$ScreenEventReciver;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->mScreenEventReciver:Lcom/fimi/album/widget/CustomVideoView$ScreenEventReciver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 415
    const-string v0, "CustomVideoView"

    const-string v1, "do destory"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 418
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 419
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 420
    iput-object v3, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 422
    :cond_0
    invoke-direct {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->setCurrentPlayState(I)V

    .line 423
    iput v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mCurrentCount:I

    .line 424
    invoke-virtual {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->setIsComplete(Z)V

    .line 425
    invoke-virtual {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->setIsRealPause(Z)V

    .line 426
    invoke-direct {p0}, Lcom/fimi/album/widget/CustomVideoView;->unRegisterBroadcastReceiver()V

    .line 427
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 428
    invoke-direct {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->showPauseView(Z)V

    .line 429
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 572
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 579
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mIsComplete:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRealPause()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mIsRealPause:Z

    return v0
.end method

.method public load()V
    .locals 5

    .prologue
    .line 337
    const-string v1, "CustomVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/album/widget/CustomVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget v1, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    if-eqz v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/fimi/album/widget/CustomVideoView;->showLoadingView()V

    .line 343
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/fimi/album/widget/CustomVideoView;->setCurrentPlayState(I)V

    .line 344
    invoke-direct {p0}, Lcom/fimi/album/widget/CustomVideoView;->checkMediaPlayer()V

    .line 345
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fimi/album/widget/CustomVideoView;->mute(Z)V

    .line 346
    iget-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->nameTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/fimi/album/widget/CustomVideoView;->mUrl:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->stop()V

    goto :goto_0
.end method

.method public mute(Z)V
    .locals 2
    .param p1, "mute"    # Z

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/fimi/album/widget/CustomVideoView;->isMute:Z

    .line 500
    iget-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 501
    iget-boolean v1, p0, Lcom/fimi/album/widget/CustomVideoView;->isMute:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 502
    .local v0, "volume":F
    :goto_0
    iget-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 504
    .end local v0    # "volume":F
    :cond_0
    return-void

    .line 501
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I

    .prologue
    .line 613
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/example/album/R$id;->play_video_textureview:I

    if-ne v0, v1, :cond_2

    .line 186
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mTopBarLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mTopBarLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mTopBarLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/example/album/R$id;->play_btn:I

    if-ne v0, v1, :cond_5

    .line 200
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 201
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlaySb:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/CustomVideoView;->seekAndResume(I)V

    goto :goto_0

    .line 202
    :cond_3
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    if-nez v0, :cond_4

    .line 203
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->load()V

    goto :goto_0

    .line 205
    :cond_4
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->pause()V

    goto :goto_0

    .line 207
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/example/album/R$id;->media_back_btn:I

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->listener:Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->listener:Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    invoke-interface {v0}, Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;->onClickBackBtn()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 300
    const-string v0, "CustomVideoView"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->listener:Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->listener:Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    invoke-interface {v0}, Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;->onAdVideoLoadComplete()V

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->playBack()V

    .line 305
    invoke-virtual {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->setIsComplete(Z)V

    .line 306
    invoke-virtual {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->setIsRealPause(Z)V

    .line 308
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    .line 317
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

    .line 318
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    .line 319
    iput-object p1, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 320
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 323
    :cond_0
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mCurrentCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 324
    invoke-direct {p0, v3}, Lcom/fimi/album/widget/CustomVideoView;->showPauseView(Z)V

    .line 325
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->listener:Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->listener:Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    invoke-interface {v0}, Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;->onAdVideoLoadFailed()V

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->stop()V

    .line 330
    return v3
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 282
    const-string v0, "CustomVideoView"

    const-string v1, "onPrepare"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/fimi/album/widget/CustomVideoView;->showPlayView()V

    .line 284
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mPlaySb:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 285
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mTotalTimeTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->getDuration()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fimi/album/widget/CustomVideoView;->setTimeFormatter(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iput-object p1, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 287
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mCurrentCount:I

    .line 290
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->listener:Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->listener:Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    invoke-interface {v0}, Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;->onAdVideoLoadSuccess()V

    .line 293
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fimi/album/widget/CustomVideoView;->setCurrentPlayState(I)V

    .line 294
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->resume()V

    .line 296
    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 617
    if-eqz p3, :cond_0

    .line 618
    const-string v0, "CustomVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fimi/album/widget/CustomVideoView;->isUpdateProgressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/album/widget/CustomVideoView;->isUpdateProgressed:Z

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/widget/CustomVideoView;->showTopBottomBarTime:I

    .line 621
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mCurrentTimeTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fimi/album/widget/CustomVideoView;->setTimeFormatter(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 627
    const-string v0, "CustomVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fimi/album/widget/CustomVideoView;->isUpdateProgressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/album/widget/CustomVideoView;->isUpdateProgressed:Z

    .line 629
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/widget/CustomVideoView;->showTopBottomBarTime:I

    .line 631
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 635
    const-string v0, "CustomVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fimi/album/widget/CustomVideoView;->isUpdateProgressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/album/widget/CustomVideoView;->isUpdateProgressed:Z

    .line 637
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 638
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/CustomVideoView;->seekAndResume(I)V

    .line 640
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 232
    const-string v0, "CustomVideoView"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->videoSurface:Landroid/view/Surface;

    .line 234
    invoke-direct {p0}, Lcom/fimi/album/widget/CustomVideoView;->checkMediaPlayer()V

    .line 235
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/fimi/album/widget/CustomVideoView;->videoSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 236
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->load()V

    .line 237
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 241
    const-string v0, "CustomVideoView"

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 252
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 267
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

    iget-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mMiniPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 269
    if-nez p2, :cond_2

    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->isRealPause()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->pause()V

    .line 278
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->resume()V

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 382
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 395
    :goto_0
    return-void

    .line 385
    :cond_0
    const-string v0, "CustomVideoView"

    const-string v1, "do full pause"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fimi/album/widget/CustomVideoView;->setCurrentPlayState(I)V

    .line 387
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 389
    iget-boolean v0, p0, Lcom/fimi/album/widget/CustomVideoView;->canPlay:Z

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 393
    :cond_1
    invoke-direct {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->showPauseView(Z)V

    .line 394
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public playBack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 432
    const-string v0, "CustomVideoView"

    const-string v1, " do play back"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fimi/album/widget/CustomVideoView;->setCurrentPlayState(I)V

    .line 434
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 437
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 438
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 440
    :cond_0
    invoke-direct {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->showPauseView(Z)V

    .line 441
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 398
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-virtual {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->mute(Z)V

    .line 402
    const-string v0, "CustomVideoView"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/fimi/album/widget/CustomVideoView;->entryResumeState()V

    .line 405
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 406
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 407
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 408
    invoke-direct {p0, v3}, Lcom/fimi/album/widget/CustomVideoView;->showPauseView(Z)V

    goto :goto_0

    .line 410
    :cond_1
    invoke-direct {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->showPauseView(Z)V

    goto :goto_0
.end method

.method public seekAndPause(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 525
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->playerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/album/widget/CustomVideoView;->showPauseView(Z)V

    .line 529
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fimi/album/widget/CustomVideoView;->setCurrentPlayState(I)V

    .line 530
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 532
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/fimi/album/widget/CustomVideoView$3;

    invoke-direct {v1, p0}, Lcom/fimi/album/widget/CustomVideoView$3;-><init>(Lcom/fimi/album/widget/CustomVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    goto :goto_0
.end method

.method public seekAndResume(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/album/widget/CustomVideoView;->showPauseView(Z)V

    .line 510
    invoke-direct {p0}, Lcom/fimi/album/widget/CustomVideoView;->entryResumeState()V

    .line 511
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 512
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/fimi/album/widget/CustomVideoView$2;

    invoke-direct {v1, p0}, Lcom/fimi/album/widget/CustomVideoView$2;-><init>(Lcom/fimi/album/widget/CustomVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 521
    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/fimi/album/widget/CustomVideoView;->mUrl:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setIsComplete(Z)V
    .locals 0
    .param p1, "isComplete"    # Z

    .prologue
    .line 487
    iput-boolean p1, p0, Lcom/fimi/album/widget/CustomVideoView;->mIsComplete:Z

    .line 488
    return-void
.end method

.method public setIsRealPause(Z)V
    .locals 0
    .param p1, "isRealPause"    # Z

    .prologue
    .line 491
    iput-boolean p1, p0, Lcom/fimi/album/widget/CustomVideoView;->mIsRealPause:Z

    .line 492
    return-void
.end method

.method public setListener(Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/fimi/album/widget/CustomVideoView;->listener:Lcom/fimi/album/widget/CustomVideoView$VideoPlayerListener;

    .line 677
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 360
    const-string v0, "CustomVideoView"

    const-string v1, "do stop"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 363
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 364
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 365
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 366
    iput-object v2, p0, Lcom/fimi/album/widget/CustomVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 369
    invoke-direct {p0, v3}, Lcom/fimi/album/widget/CustomVideoView;->setCurrentPlayState(I)V

    .line 370
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mCurrentCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 371
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mCurrentCount:I

    .line 372
    invoke-virtual {p0}, Lcom/fimi/album/widget/CustomVideoView;->load()V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-direct {p0, v3}, Lcom/fimi/album/widget/CustomVideoView;->showPauseView(Z)V

    goto :goto_0
.end method

.method public timeFunction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/fimi/album/widget/CustomVideoView;->mBottomPlayRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    const-string v0, "CustomVideoView"

    const-string v1, "handleMessage:visible"

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->showTopBottomBarTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/album/widget/CustomVideoView;->showTopBottomBarTime:I

    .line 119
    iget v0, p0, Lcom/fimi/album/widget/CustomVideoView;->showTopBottomBarTime:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 120
    iput v2, p0, Lcom/fimi/album/widget/CustomVideoView;->showTopBottomBarTime:I

    .line 121
    invoke-direct {p0, v2}, Lcom/fimi/album/widget/CustomVideoView;->showBar(Z)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iput v2, p0, Lcom/fimi/album/widget/CustomVideoView;->showTopBottomBarTime:I

    goto :goto_0
.end method
