.class public final Lcom/fimi/soul/media/player/FimiMediaPlayer;
.super Lcom/fimi/soul/media/player/AbstractMediaPlayer;
.source "FimiMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/soul/media/player/FimiMediaPlayer$DefaultMediaCodecSelector;,
        Lcom/fimi/soul/media/player/FimiMediaPlayer$OnMediaCodecSelectListener;,
        Lcom/fimi/soul/media/player/FimiMediaPlayer$OnNativeInvokeListener;,
        Lcom/fimi/soul/media/player/FimiMediaPlayer$OnControlMessageListener;,
        Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;
    }
.end annotation


# static fields
.field public static final IJK_LOG_DEBUG:I = 0x3

.field public static final IJK_LOG_DEFAULT:I = 0x1

.field public static final IJK_LOG_ERROR:I = 0x6

.field public static final IJK_LOG_FATAL:I = 0x7

.field public static final IJK_LOG_INFO:I = 0x4

.field public static final IJK_LOG_SILENT:I = 0x8

.field public static final IJK_LOG_UNKNOWN:I = 0x0

.field public static final IJK_LOG_VERBOSE:I = 0x2

.field public static final IJK_LOG_WARN:I = 0x5

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field protected static final MEDIA_SET_VIDEO_SAR:I = 0x2711

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final OPT_CATEGORY_CODEC:I = 0x2

.field public static final OPT_CATEGORY_FORMAT:I = 0x1

.field public static final OPT_CATEGORY_PLAYER:I = 0x4

.field public static final OPT_CATEGORY_SWS:I = 0x3

.field public static final SDL_FCC_RV16:I = 0x36315652

.field public static final SDL_FCC_RV32:I = 0x32335652

.field public static final SDL_FCC_YV12:I = 0x32315659

.field private static final TAG:Ljava/lang/String;

.field private static fimiMediaPlayer:Lcom/fimi/soul/media/player/FimiMediaPlayer;

.field private static volatile mIsLibLoaded:Z

.field private static volatile mIsNativeInitialized:Z

.field private static sLocalLibLoader:Lcom/fimi/soul/media/player/FimiLibLoader;


# instance fields
.field private mDataSource:Ljava/lang/String;

.field private mEventHandler:Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;

.field private mListenerContext:I
    .annotation build Lcom/fimi/soul/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeMediaPlayer:J
    .annotation build Lcom/fimi/soul/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeSurfaceTexture:I
    .annotation build Lcom/fimi/soul/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mOnControlMessageListener:Lcom/fimi/soul/media/player/FimiMediaPlayer$OnControlMessageListener;

.field private mOnMediaCodecSelectListener:Lcom/fimi/soul/media/player/FimiMediaPlayer$OnMediaCodecSelectListener;

.field private mOnNativeInvokeListener:Lcom/fimi/soul/media/player/FimiMediaPlayer$OnNativeInvokeListener;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoHeight:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const-class v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/fimi/soul/media/player/FimiMediaPlayer$1;

    invoke-direct {v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer$1;-><init>()V

    sput-object v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->sLocalLibLoader:Lcom/fimi/soul/media/player/FimiLibLoader;

    .line 133
    sput-boolean v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mIsLibLoaded:Z

    .line 148
    sput-boolean v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mIsNativeInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->sLocalLibLoader:Lcom/fimi/soul/media/player/FimiLibLoader;

    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;-><init>(Lcom/fimi/soul/media/player/FimiLibLoader;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/fimi/soul/media/player/FimiLibLoader;)V
    .locals 1
    .param p1, "libLoader"    # Lcom/fimi/soul/media/player/FimiLibLoader;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/fimi/soul/media/player/AbstractMediaPlayer;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 188
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->initPlayer(Lcom/fimi/soul/media/player/FimiLibLoader;)V

    .line 189
    return-void
.end method

.method private native _getAudioCodecInfo()Ljava/lang/String;
.end method

.method private static native _getColorFormatName(I)Ljava/lang/String;
.end method

.method private native _getMediaMeta()Landroid/os/Bundle;
.end method

.method private native _getVideoCodecInfo()Ljava/lang/String;
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSourceFd(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setOption(ILjava/lang/String;J)V
.end method

.method private native _setOption(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stream2jpg(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lcom/fimi/soul/media/player/FimiMediaPlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FimiMediaPlayer;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mNativeMediaPlayer:J

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/soul/media/player/FimiMediaPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FimiMediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FimiMediaPlayer;

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/fimi/soul/media/player/FimiMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FimiMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FimiMediaPlayer;

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/fimi/soul/media/player/FimiMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FimiMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FimiMediaPlayer;

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$502(Lcom/fimi/soul/media/player/FimiMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FimiMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$600(Lcom/fimi/soul/media/player/FimiMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FimiMediaPlayer;

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$602(Lcom/fimi/soul/media/player/FimiMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/soul/media/player/FimiMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoSarDen:I

    return p1
.end method

.method public static getColorFormatName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mediaCodecColorFormat"    # I

    .prologue
    .line 710
    invoke-static {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_getColorFormatName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntance()Lcom/fimi/soul/media/player/FimiMediaPlayer;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->fimiMediaPlayer:Lcom/fimi/soul/media/player/FimiMediaPlayer;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;

    invoke-direct {v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;-><init>()V

    .line 179
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->fimiMediaPlayer:Lcom/fimi/soul/media/player/FimiMediaPlayer;

    goto :goto_0
.end method

.method private static initNativeOnce()V
    .locals 7

    .prologue
    .line 150
    const-class v4, Lcom/fimi/soul/media/player/FimiMediaPlayer;

    monitor-enter v4

    .line 151
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "FimiMediaPlayer.java"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 154
    .local v2, "time":J
    sget-boolean v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mIsNativeInitialized:Z

    if-nez v1, :cond_0

    .line 155
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->native_init()V

    .line 156
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mIsNativeInitialized:Z

    .line 157
    sget-object v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aizj version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/fimi/soul/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    monitor-exit v4

    .line 160
    return-void

    .line 159
    .end local v2    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initPlayer(Lcom/fimi/soul/media/player/FimiLibLoader;)V
    .locals 2
    .param p1, "libLoader"    # Lcom/fimi/soul/media/player/FimiLibLoader;

    .prologue
    .line 192
    invoke-static {p1}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->loadLibrariesOnce(Lcom/fimi/soul/media/player/FimiLibLoader;)V

    .line 193
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->initNativeOnce()V

    .line 196
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 197
    new-instance v1, Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;-><init>(Lcom/fimi/soul/media/player/FimiMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;

    .line 208
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 209
    return-void

    .line 198
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    new-instance v1, Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;-><init>(Lcom/fimi/soul/media/player/FimiMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;

    goto :goto_0

    .line 201
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;

    goto :goto_0
.end method

.method public static loadLibrariesOnce(Lcom/fimi/soul/media/player/FimiLibLoader;)V
    .locals 2
    .param p0, "libLoader"    # Lcom/fimi/soul/media/player/FimiLibLoader;

    .prologue
    .line 135
    const-class v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-boolean v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mIsLibLoaded:Z

    if-nez v0, :cond_1

    .line 137
    if-nez p0, :cond_0

    .line 138
    sget-object p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->sLocalLibLoader:Lcom/fimi/soul/media/player/FimiLibLoader;

    .line 140
    :cond_0
    const-string v0, "fmffmpeg"

    invoke-interface {p0, v0}, Lcom/fimi/soul/media/player/FimiLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 141
    const-string v0, "fmsdl"

    invoke-interface {p0, v0}, Lcom/fimi/soul/media/player/FimiLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 142
    const-string v0, "fmplayer"

    invoke-interface {p0, v0}, Lcom/fimi/soul/media/player/FimiLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mIsLibLoaded:Z

    .line 145
    :cond_1
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_message_loop(Ljava/lang/Object;)V
.end method

.method public static native native_profileBegin(Ljava/lang/String;)V
.end method

.method public static native native_profileEnd()V
.end method

.method public static native native_setLogLevel(I)V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static onControlResolveSegmentUrl(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 9
    .param p0, "weakThiz"    # Ljava/lang/Object;
    .param p1, "segment"    # I
    .annotation build Lcom/fimi/soul/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 877
    sget-object v4, Lcom/fimi/soul/media/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    const-string v5, "onControlResolveSegmentUrl %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/fimi/soul/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 878
    if-eqz p0, :cond_0

    instance-of v4, p0, Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v2, p0

    .line 882
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 883
    .local v2, "weakPlayer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fimi/soul/media/player/FimiMediaPlayer;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;

    .line 884
    .local v1, "player":Lcom/fimi/soul/media/player/FimiMediaPlayer;
    if-eqz v1, :cond_0

    .line 887
    iget-object v0, v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mOnControlMessageListener:Lcom/fimi/soul/media/player/FimiMediaPlayer$OnControlMessageListener;

    .line 888
    .local v0, "listener":Lcom/fimi/soul/media/player/FimiMediaPlayer$OnControlMessageListener;
    if-eqz v0, :cond_0

    .line 891
    invoke-interface {v0, p1}, Lcom/fimi/soul/media/player/FimiMediaPlayer$OnControlMessageListener;->onControlResolveSegmentUrl(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static onNativeInvoke(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 8
    .param p0, "weakThiz"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation build Lcom/fimi/soul/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 910
    sget-object v4, Lcom/fimi/soul/media/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    const-string v5, "onNativeInvoke %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/fimi/soul/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 911
    if-eqz p0, :cond_0

    instance-of v4, p0, Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    .line 924
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p0

    .line 915
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 916
    .local v2, "weakPlayer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fimi/soul/media/player/FimiMediaPlayer;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;

    .line 917
    .local v1, "player":Lcom/fimi/soul/media/player/FimiMediaPlayer;
    if-eqz v1, :cond_0

    .line 920
    iget-object v0, v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mOnNativeInvokeListener:Lcom/fimi/soul/media/player/FimiMediaPlayer$OnNativeInvokeListener;

    .line 921
    .local v0, "listener":Lcom/fimi/soul/media/player/FimiMediaPlayer$OnNativeInvokeListener;
    if-eqz v0, :cond_0

    .line 924
    invoke-interface {v0, p1, p2}, Lcom/fimi/soul/media/player/FimiMediaPlayer$OnNativeInvokeListener;->onNativeInvoke(ILandroid/os/Bundle;)Z

    move-result v3

    goto :goto_0
.end method

.method private static onSelectCodec(Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "weakThiz"    # Ljava/lang/Object;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "profile"    # I
    .param p3, "level"    # I
    .annotation build Lcom/fimi/soul/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 946
    if-eqz p0, :cond_0

    instance-of v4, p0, Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v2, p0

    .line 950
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 951
    .local v2, "weakPlayer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fimi/soul/media/player/FimiMediaPlayer;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;

    .line 952
    .local v1, "player":Lcom/fimi/soul/media/player/FimiMediaPlayer;
    if-eqz v1, :cond_0

    .line 955
    iget-object v0, v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mOnMediaCodecSelectListener:Lcom/fimi/soul/media/player/FimiMediaPlayer$OnMediaCodecSelectListener;

    .line 956
    .local v0, "listener":Lcom/fimi/soul/media/player/FimiMediaPlayer$OnMediaCodecSelectListener;
    if-nez v0, :cond_2

    .line 957
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaPlayer$DefaultMediaCodecSelector;->sInstance:Lcom/fimi/soul/media/player/FimiMediaPlayer$DefaultMediaCodecSelector;

    .line 959
    :cond_2
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/fimi/soul/media/player/FimiMediaPlayer$OnMediaCodecSelectListener;->onMediaCodecSelect(Lcom/fimi/soul/media/player/IMediaPlayer;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "weakThiz"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .annotation build Lcom/fimi/soul/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 842
    if-nez p0, :cond_1

    .line 860
    .end local p0    # "weakThiz":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 846
    .restart local p0    # "weakThiz":Ljava/lang/Object;
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "weakThiz":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;

    .line 847
    .local v1, "mp":Lcom/fimi/soul/media/player/FimiMediaPlayer;
    if-eqz v1, :cond_0

    .line 851
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 854
    invoke-virtual {v1}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->start()V

    .line 856
    :cond_2
    iget-object v2, v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 857
    iget-object v2, v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 858
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 440
    return-void
.end method

.method private stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 534
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 540
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mStayAwake:Z

    .line 541
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->updateSurfaceScreenOn()V

    .line 542
    return-void

    .line 536
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 548
    :cond_0
    return-void

    .line 546
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public native GetNetworkInfo([I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public PlayerGetNetworkInfo([I)I
    .locals 1
    .param p1, "net_buffer"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->GetNetworkInfo([I)I

    move-result v0

    return v0
.end method

.method public PlayerPreviewInputNetData([BII)I
    .locals 1
    .param p1, "net_buffer"    # [B
    .param p2, "start_pos"    # I
    .param p3, "data_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->PreviewInputNetData([BII)I

    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public PlayerRtmpStart(Ljava/lang/String;II)I
    .locals 1
    .param p1, "str_url"    # Ljava/lang/String;
    .param p2, "net_mode"    # I
    .param p3, "audio_en"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1054
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->RtmpStart(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public PlayerRtmpStop(I)I
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1059
    invoke-virtual {p0, p1}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->RtmpStop(I)I

    move-result v0

    return v0
.end method

.method public native PreviewInputNetData([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native RtmpStart(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native RtmpStop(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _prepareAsync(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public concatVedio(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "input_array"    # Ljava/lang/String;
    .param p2, "outUrl"    # Ljava/lang/String;

    .prologue
    .line 1041
    invoke-virtual {p0, p1, p2}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->fm_avp_concatVid(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->native_finalize()V

    .line 735
    return-void
.end method

.method public native fm_avp_concatVid(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native fm_avp_mergeAV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native fm_avp_splitVid(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public native fm_avp_vid2img(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native getAudioSessionId()I
.end method

.method public native getCurrentPosition()J
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public native getDuration()J
.end method

.method public getMediaInfo()Lcom/fimi/soul/media/player/MediaInfo;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 628
    new-instance v2, Lcom/fimi/soul/media/player/MediaInfo;

    invoke-direct {v2}, Lcom/fimi/soul/media/player/MediaInfo;-><init>()V

    .line 629
    .local v2, "mediaInfo":Lcom/fimi/soul/media/player/MediaInfo;
    const-string v5, "ijkplayer"

    iput-object v5, v2, Lcom/fimi/soul/media/player/MediaInfo;->mMediaPlayerName:Ljava/lang/String;

    .line 631
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_getVideoCodecInfo()Ljava/lang/String;

    move-result-object v4

    .line 632
    .local v4, "videoCodecInfo":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 633
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, "nodes":[Ljava/lang/String;
    array-length v5, v3

    if-lt v5, v8, :cond_2

    .line 635
    aget-object v5, v3, v6

    iput-object v5, v2, Lcom/fimi/soul/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 636
    aget-object v5, v3, v7

    iput-object v5, v2, Lcom/fimi/soul/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    .line 643
    .end local v3    # "nodes":[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_getAudioCodecInfo()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "audioCodecInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 645
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 646
    .restart local v3    # "nodes":[Ljava/lang/String;
    array-length v5, v3

    if-lt v5, v8, :cond_3

    .line 647
    aget-object v5, v3, v6

    iput-object v5, v2, Lcom/fimi/soul/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 648
    aget-object v5, v3, v7

    iput-object v5, v2, Lcom/fimi/soul/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    .line 656
    .end local v3    # "nodes":[Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/fimi/soul/media/player/FimiMediaMeta;->parse(Landroid/os/Bundle;)Lcom/fimi/soul/media/player/FimiMediaMeta;

    move-result-object v5

    iput-object v5, v2, Lcom/fimi/soul/media/player/MediaInfo;->mMeta:Lcom/fimi/soul/media/player/FimiMediaMeta;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :goto_2
    return-object v2

    .line 637
    .end local v0    # "audioCodecInfo":Ljava/lang/String;
    .restart local v3    # "nodes":[Ljava/lang/String;
    :cond_2
    array-length v5, v3

    if-lt v5, v7, :cond_0

    .line 638
    aget-object v5, v3, v6

    iput-object v5, v2, Lcom/fimi/soul/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 639
    const-string v5, ""

    iput-object v5, v2, Lcom/fimi/soul/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    goto :goto_0

    .line 649
    .restart local v0    # "audioCodecInfo":Ljava/lang/String;
    :cond_3
    array-length v5, v3

    if-lt v5, v7, :cond_1

    .line 650
    aget-object v5, v3, v6

    iput-object v5, v2, Lcom/fimi/soul/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 651
    const-string v5, ""

    iput-object v5, v2, Lcom/fimi/soul/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    goto :goto_1

    .line 657
    .end local v3    # "nodes":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public getMediaMeta()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x1

    return v0
.end method

.method public native isPlaying()Z
.end method

.method public mergeAudio2Vedio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "vedioUrl"    # Ljava/lang/String;
    .param p2, "audioString"    # Ljava/lang/String;
    .param p3, "outUrl"    # Ljava/lang/String;

    .prologue
    .line 1045
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->fm_avp_mergeAV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->stayAwake(Z)V

    .line 492
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_pause()V

    .line 493
    return-void
.end method

.method public prepareAsync(II)V
    .locals 0
    .param p1, "net_mode"    # I
    .param p2, "buffer_count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_prepareAsync(II)V

    .line 457
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->stayAwake(Z)V

    .line 601
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->updateSurfaceScreenOn()V

    .line 602
    invoke-virtual {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->resetListeners()V

    .line 603
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_release()V

    .line 604
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 610
    invoke-direct {p0, v2}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->stayAwake(Z)V

    .line 611
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_reset()V

    .line 613
    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/soul/media/player/FimiMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 615
    iput v2, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoWidth:I

    .line 616
    iput v2, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mVideoHeight:I

    .line 617
    return-void
.end method

.method public resetListeners()V
    .locals 1

    .prologue
    .line 940
    invoke-super {p0}, Lcom/fimi/soul/media/player/AbstractMediaPlayer;->resetListeners()V

    .line 941
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mOnMediaCodecSelectListener:Lcom/fimi/soul/media/player/FimiMediaPlayer$OnMediaCodecSelectListener;

    .line 942
    return-void
.end method

.method public native seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    .prologue
    .line 718
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 284
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 302
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, "scheme":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const-string v0, "content"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "settings"

    .line 307
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 309
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 311
    if-nez p2, :cond_2

    .line 312
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to resolve default ringtone"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_2
    const/4 v6, 0x0

    .line 318
    .local v6, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 319
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string v0, "r"

    invoke-virtual {v7, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 320
    if-nez v6, :cond_3

    .line 335
    if-eqz v6, :cond_0

    .line 336
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 326
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 327
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :goto_1
    if-eqz v6, :cond_0

    .line 336
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 329
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 332
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 335
    if-eqz v6, :cond_5

    .line 336
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 340
    :cond_5
    :goto_2
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 333
    :catch_1
    move-exception v0

    .line 335
    if-eqz v6, :cond_5

    .line 336
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2

    .line 335
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 336
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 338
    :cond_6
    throw v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 404
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-ge v4, v5, :cond_0

    .line 405
    const/4 v2, -0x1

    .line 407
    .local v2, "native_fd":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "descriptor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 408
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 409
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 415
    invoke-direct {p0, v2}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_setDataSourceFd(I)V

    .line 424
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "native_fd":I
    :goto_0
    return-void

    .line 410
    .restart local v2    # "native_fd":I
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 412
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 417
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "native_fd":I
    :cond_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 419
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_setDataSourceFd(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 422
    throw v4
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 365
    iput-object p1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 366
    invoke-direct {p0, p1, v0, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 379
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 382
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 385
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_0
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 390
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 239
    .local v0, "surface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 240
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->updateSurfaceScreenOn()V

    .line 241
    return-void

    .line 237
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public setKeepInBackground(Z)V
    .locals 0
    .param p1, "keepInBackground"    # Z

    .prologue
    .line 723
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 666
    return-void
.end method

.method public setOnControlMessageListener(Lcom/fimi/soul/media/player/FimiMediaPlayer$OnControlMessageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/FimiMediaPlayer$OnControlMessageListener;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mOnControlMessageListener:Lcom/fimi/soul/media/player/FimiMediaPlayer$OnControlMessageListener;

    .line 869
    return-void
.end method

.method public setOnMediaCodecSelectListener(Lcom/fimi/soul/media/player/FimiMediaPlayer$OnMediaCodecSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/FimiMediaPlayer$OnMediaCodecSelectListener;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mOnMediaCodecSelectListener:Lcom/fimi/soul/media/player/FimiMediaPlayer$OnMediaCodecSelectListener;

    .line 937
    return-void
.end method

.method public setOnNativeInvokeListener(Lcom/fimi/soul/media/player/FimiMediaPlayer$OnNativeInvokeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/soul/media/player/FimiMediaPlayer$OnNativeInvokeListener;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mOnNativeInvokeListener:Lcom/fimi/soul/media/player/FimiMediaPlayer$OnNativeInvokeListener;

    .line 901
    return-void
.end method

.method public setOption(ILjava/lang/String;J)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 698
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_setOption(ILjava/lang/String;J)V

    .line 699
    return-void
.end method

.method public setOption(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 693
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 522
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 523
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Lcom/fimi/soul/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    iput-boolean p1, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 527
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->updateSurfaceScreenOn()V

    .line 529
    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 265
    sget-object v0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Lcom/fimi/soul/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 269
    invoke-direct {p0, p1}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 270
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->updateSurfaceScreenOn()V

    .line 271
    return-void
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 500
    const/4 v1, 0x0

    .line 501
    .local v1, "washeld":Z
    iget-object v2, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    const/4 v1, 0x1

    .line 504
    iget-object v2, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 506
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 509
    :cond_1
    const-string v2, "power"

    .line 510
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 511
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-class v3, Lcom/fimi/soul/media/player/FimiMediaPlayer;

    .line 512
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 511
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 513
    iget-object v2, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 514
    if-eqz v1, :cond_2

    .line 515
    iget-object v2, p0, Lcom/fimi/soul/media/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 517
    :cond_2
    return-void
.end method

.method public spliteVedio(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1
    .param p1, "inputUrl"    # Ljava/lang/String;
    .param p2, "outUrl"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 1037
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->fm_avp_splitVid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 474
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->stayAwake(Z)V

    .line 475
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_start()V

    .line 476
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->stayAwake(Z)V

    .line 484
    invoke-direct {p0}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_stop()V

    .line 485
    return-void
.end method

.method public vid2imgArray(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "inputUrl"    # Ljava/lang/String;
    .param p2, "outUrl"    # Ljava/lang/String;

    .prologue
    .line 1033
    invoke-virtual {p0, p1, p2}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->fm_avp_vid2img(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public videoToJpg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "remoteUrl"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 682
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 685
    :cond_0
    :goto_0
    return v1

    .line 684
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->_stream2jpg(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 685
    .local v0, "iRet":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
