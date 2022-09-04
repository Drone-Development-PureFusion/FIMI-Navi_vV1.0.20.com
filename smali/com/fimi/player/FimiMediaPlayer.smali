.class public final Lcom/fimi/player/FimiMediaPlayer;
.super Lcom/fimi/player/AbstractMediaPlayer;
.source "FimiMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/player/FimiMediaPlayer$RtspServiceListener;,
        Lcom/fimi/player/FimiMediaPlayer$DefaultMediaCodecSelector;,
        Lcom/fimi/player/FimiMediaPlayer$OnMediaCodecSelectListener;,
        Lcom/fimi/player/FimiMediaPlayer$OnNativeInvokeListener;,
        Lcom/fimi/player/FimiMediaPlayer$OnControlMessageListener;,
        Lcom/fimi/player/FimiMediaPlayer$EventHandler;
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

.field private static final MEDIA_IMAGE_QUALITY_WARN:I = 0x8

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PLAYBACK_START_STREAM:I = 0x7

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

.field private static fimiMediaPlayer:Lcom/fimi/player/FimiMediaPlayer;

.field private static volatile mIsLibLoaded:Z

.field private static volatile mIsNativeInitialized:Z

.field private static sLocalLibLoader:Lcom/fimi/player/FimiLibLoader;

.field private static serviceListener:Lcom/fimi/player/FimiMediaPlayer$RtspServiceListener;


# instance fields
.field private mDataSource:Ljava/lang/String;

.field private mEventHandler:Lcom/fimi/player/FimiMediaPlayer$EventHandler;

.field private mListenerContext:I
    .annotation build Lcom/fimi/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeMediaPlayer:J
    .annotation build Lcom/fimi/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeSurfaceTexture:I
    .annotation build Lcom/fimi/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mOnControlMessageListener:Lcom/fimi/player/FimiMediaPlayer$OnControlMessageListener;

.field private mOnMediaCodecSelectListener:Lcom/fimi/player/FimiMediaPlayer$OnMediaCodecSelectListener;

.field private mOnNativeInvokeListener:Lcom/fimi/player/FimiMediaPlayer$OnNativeInvokeListener;

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
    const-class v0, Lcom/fimi/player/FimiMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/fimi/player/FimiMediaPlayer$1;

    invoke-direct {v0}, Lcom/fimi/player/FimiMediaPlayer$1;-><init>()V

    sput-object v0, Lcom/fimi/player/FimiMediaPlayer;->sLocalLibLoader:Lcom/fimi/player/FimiLibLoader;

    .line 136
    sput-boolean v1, Lcom/fimi/player/FimiMediaPlayer;->mIsLibLoaded:Z

    .line 151
    sput-boolean v1, Lcom/fimi/player/FimiMediaPlayer;->mIsNativeInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/fimi/player/FimiMediaPlayer;->sLocalLibLoader:Lcom/fimi/player/FimiLibLoader;

    invoke-direct {p0, v0}, Lcom/fimi/player/FimiMediaPlayer;-><init>(Lcom/fimi/player/FimiLibLoader;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/fimi/player/FimiLibLoader;)V
    .locals 1
    .param p1, "libLoader"    # Lcom/fimi/player/FimiLibLoader;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/fimi/player/AbstractMediaPlayer;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 190
    invoke-direct {p0, p1}, Lcom/fimi/player/FimiMediaPlayer;->initPlayer(Lcom/fimi/player/FimiLibLoader;)V

    .line 191
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

.method static synthetic access$000(Lcom/fimi/player/FimiMediaPlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/player/FimiMediaPlayer;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mNativeMediaPlayer:J

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/fimi/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/player/FimiMediaPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/FimiMediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/fimi/player/FimiMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/player/FimiMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/FimiMediaPlayer;

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/fimi/player/FimiMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/FimiMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/fimi/player/FimiMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/FimiMediaPlayer;

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/fimi/player/FimiMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/FimiMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/fimi/player/FimiMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/FimiMediaPlayer;

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$502(Lcom/fimi/player/FimiMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/FimiMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$600(Lcom/fimi/player/FimiMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/player/FimiMediaPlayer;

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$602(Lcom/fimi/player/FimiMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/player/FimiMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$700()Lcom/fimi/player/FimiMediaPlayer$RtspServiceListener;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/fimi/player/FimiMediaPlayer;->serviceListener:Lcom/fimi/player/FimiMediaPlayer$RtspServiceListener;

    return-object v0
.end method

.method public static getColorFormatName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mediaCodecColorFormat"    # I

    .prologue
    .line 745
    invoke-static {p0}, Lcom/fimi/player/FimiMediaPlayer;->_getColorFormatName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntance()Lcom/fimi/player/FimiMediaPlayer;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/fimi/player/FimiMediaPlayer;->fimiMediaPlayer:Lcom/fimi/player/FimiMediaPlayer;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/fimi/player/FimiMediaPlayer;

    invoke-direct {v0}, Lcom/fimi/player/FimiMediaPlayer;-><init>()V

    .line 181
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fimi/player/FimiMediaPlayer;->fimiMediaPlayer:Lcom/fimi/player/FimiMediaPlayer;

    goto :goto_0
.end method

.method private static initNativeOnce()V
    .locals 5

    .prologue
    .line 153
    const-class v4, Lcom/fimi/player/FimiMediaPlayer;

    monitor-enter v4

    .line 154
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "FimiMediaPlayer.java"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 157
    .local v2, "time":J
    sget-boolean v1, Lcom/fimi/player/FimiMediaPlayer;->mIsNativeInitialized:Z

    if-nez v1, :cond_0

    .line 158
    invoke-static {}, Lcom/fimi/player/FimiMediaPlayer;->native_init()V

    .line 159
    const/4 v1, 0x1

    sput-boolean v1, Lcom/fimi/player/FimiMediaPlayer;->mIsNativeInitialized:Z

    .line 161
    :cond_0
    monitor-exit v4

    .line 162
    return-void

    .line 161
    .end local v2    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initPlayer(Lcom/fimi/player/FimiLibLoader;)V
    .locals 2
    .param p1, "libLoader"    # Lcom/fimi/player/FimiLibLoader;

    .prologue
    .line 194
    invoke-static {p1}, Lcom/fimi/player/FimiMediaPlayer;->loadLibrariesOnce(Lcom/fimi/player/FimiLibLoader;)V

    .line 195
    invoke-static {}, Lcom/fimi/player/FimiMediaPlayer;->initNativeOnce()V

    .line 198
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 199
    new-instance v1, Lcom/fimi/player/FimiMediaPlayer$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/fimi/player/FimiMediaPlayer$EventHandler;-><init>(Lcom/fimi/player/FimiMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/fimi/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/player/FimiMediaPlayer$EventHandler;

    .line 210
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/fimi/player/FimiMediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 211
    return-void

    .line 200
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    new-instance v1, Lcom/fimi/player/FimiMediaPlayer$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/fimi/player/FimiMediaPlayer$EventHandler;-><init>(Lcom/fimi/player/FimiMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/fimi/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/player/FimiMediaPlayer$EventHandler;

    goto :goto_0

    .line 203
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fimi/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/player/FimiMediaPlayer$EventHandler;

    goto :goto_0
.end method

.method public static loadLibrariesOnce(Lcom/fimi/player/FimiLibLoader;)V
    .locals 2
    .param p0, "libLoader"    # Lcom/fimi/player/FimiLibLoader;

    .prologue
    .line 138
    const-class v1, Lcom/fimi/player/FimiMediaPlayer;

    monitor-enter v1

    .line 139
    :try_start_0
    sget-boolean v0, Lcom/fimi/player/FimiMediaPlayer;->mIsLibLoaded:Z

    if-nez v0, :cond_1

    .line 140
    if-nez p0, :cond_0

    .line 141
    sget-object p0, Lcom/fimi/player/FimiMediaPlayer;->sLocalLibLoader:Lcom/fimi/player/FimiLibLoader;

    .line 143
    :cond_0
    const-string v0, "fmffmpeg"

    invoke-interface {p0, v0}, Lcom/fimi/player/FimiLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 144
    const-string v0, "fmsdl"

    invoke-interface {p0, v0}, Lcom/fimi/player/FimiLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 145
    const-string v0, "fmplayer"

    invoke-interface {p0, v0}, Lcom/fimi/player/FimiLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fimi/player/FimiMediaPlayer;->mIsLibLoaded:Z

    .line 148
    :cond_1
    monitor-exit v1

    .line 149
    return-void

    .line 148
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
    .annotation build Lcom/fimi/player/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 921
    sget-object v4, Lcom/fimi/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    const-string v5, "onControlResolveSegmentUrl %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/fimi/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 922
    if-eqz p0, :cond_0

    instance-of v4, p0, Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v2, p0

    .line 926
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 927
    .local v2, "weakPlayer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fimi/player/FimiMediaPlayer;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/player/FimiMediaPlayer;

    .line 928
    .local v1, "player":Lcom/fimi/player/FimiMediaPlayer;
    if-eqz v1, :cond_0

    .line 931
    iget-object v0, v1, Lcom/fimi/player/FimiMediaPlayer;->mOnControlMessageListener:Lcom/fimi/player/FimiMediaPlayer$OnControlMessageListener;

    .line 932
    .local v0, "listener":Lcom/fimi/player/FimiMediaPlayer$OnControlMessageListener;
    if-eqz v0, :cond_0

    .line 935
    invoke-interface {v0, p1}, Lcom/fimi/player/FimiMediaPlayer$OnControlMessageListener;->onControlResolveSegmentUrl(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static onNativeInvoke(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 8
    .param p0, "weakThiz"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation build Lcom/fimi/player/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 954
    sget-object v4, Lcom/fimi/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    const-string v5, "onNativeInvoke %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/fimi/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 955
    if-eqz p0, :cond_0

    instance-of v4, p0, Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    .line 968
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p0

    .line 959
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 960
    .local v2, "weakPlayer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fimi/player/FimiMediaPlayer;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/player/FimiMediaPlayer;

    .line 961
    .local v1, "player":Lcom/fimi/player/FimiMediaPlayer;
    if-eqz v1, :cond_0

    .line 964
    iget-object v0, v1, Lcom/fimi/player/FimiMediaPlayer;->mOnNativeInvokeListener:Lcom/fimi/player/FimiMediaPlayer$OnNativeInvokeListener;

    .line 965
    .local v0, "listener":Lcom/fimi/player/FimiMediaPlayer$OnNativeInvokeListener;
    if-eqz v0, :cond_0

    .line 968
    invoke-interface {v0, p1, p2}, Lcom/fimi/player/FimiMediaPlayer$OnNativeInvokeListener;->onNativeInvoke(ILandroid/os/Bundle;)Z

    move-result v3

    goto :goto_0
.end method

.method private static onSelectCodec(Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "weakThiz"    # Ljava/lang/Object;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "profile"    # I
    .param p3, "level"    # I
    .annotation build Lcom/fimi/player/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 990
    if-eqz p0, :cond_0

    instance-of v4, p0, Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v2, p0

    .line 994
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 995
    .local v2, "weakPlayer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/fimi/player/FimiMediaPlayer;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/player/FimiMediaPlayer;

    .line 996
    .local v1, "player":Lcom/fimi/player/FimiMediaPlayer;
    if-eqz v1, :cond_0

    .line 999
    iget-object v0, v1, Lcom/fimi/player/FimiMediaPlayer;->mOnMediaCodecSelectListener:Lcom/fimi/player/FimiMediaPlayer$OnMediaCodecSelectListener;

    .line 1000
    .local v0, "listener":Lcom/fimi/player/FimiMediaPlayer$OnMediaCodecSelectListener;
    if-nez v0, :cond_2

    .line 1001
    sget-object v0, Lcom/fimi/player/FimiMediaPlayer$DefaultMediaCodecSelector;->sInstance:Lcom/fimi/player/FimiMediaPlayer$DefaultMediaCodecSelector;

    .line 1003
    :cond_2
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/fimi/player/FimiMediaPlayer$OnMediaCodecSelectListener;->onMediaCodecSelect(Lcom/fimi/player/IMediaPlayer;Ljava/lang/String;II)Ljava/lang/String;

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
    .annotation build Lcom/fimi/player/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 886
    if-nez p0, :cond_1

    .line 904
    .end local p0    # "weakThiz":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 890
    .restart local p0    # "weakThiz":Ljava/lang/Object;
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "weakThiz":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/player/FimiMediaPlayer;

    .line 891
    .local v1, "mp":Lcom/fimi/player/FimiMediaPlayer;
    if-eqz v1, :cond_0

    .line 895
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 898
    invoke-virtual {v1}, Lcom/fimi/player/FimiMediaPlayer;->start()V

    .line 900
    :cond_2
    iget-object v2, v1, Lcom/fimi/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/player/FimiMediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, v1, Lcom/fimi/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/player/FimiMediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/fimi/player/FimiMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 902
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Lcom/fimi/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/player/FimiMediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Lcom/fimi/player/FimiMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

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
    .line 442
    invoke-virtual {p0, p1}, Lcom/fimi/player/FimiMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 443
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
    .line 568
    iget-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 569
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 575
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/fimi/player/FimiMediaPlayer;->mStayAwake:Z

    .line 576
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->updateSurfaceScreenOn()V

    .line 577
    return-void

    .line 571
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 581
    iget-object v1, p0, Lcom/fimi/player/FimiMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 583
    :cond_0
    return-void

    .line 581
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public RtmpStatusCB(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "status1"    # I
    .param p3, "status2"    # I

    .prologue
    .line 1093
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/player/FimiMediaPlayer;->notifyRtmpStatusCBOnLiveVideoListener(III)V

    .line 1095
    return-void
.end method

.method public native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _recEmergencySave(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _recStart(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _recStop()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _setDeviceInfo(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _setPreview(I)V
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
    .line 1085
    invoke-virtual {p0, p1, p2}, Lcom/fimi/player/FimiMediaPlayer;->fm_avp_concatVid(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->native_finalize()V

    .line 770
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
    .line 453
    iget-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public native getDuration()J
.end method

.method public getMediaInfo()Lcom/fimi/player/MediaInfo;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 663
    new-instance v2, Lcom/fimi/player/MediaInfo;

    invoke-direct {v2}, Lcom/fimi/player/MediaInfo;-><init>()V

    .line 664
    .local v2, "mediaInfo":Lcom/fimi/player/MediaInfo;
    const-string v5, "ijkplayer"

    iput-object v5, v2, Lcom/fimi/player/MediaInfo;->mMediaPlayerName:Ljava/lang/String;

    .line 666
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->_getVideoCodecInfo()Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, "videoCodecInfo":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 668
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "nodes":[Ljava/lang/String;
    array-length v5, v3

    if-lt v5, v8, :cond_2

    .line 670
    aget-object v5, v3, v6

    iput-object v5, v2, Lcom/fimi/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 671
    aget-object v5, v3, v7

    iput-object v5, v2, Lcom/fimi/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    .line 678
    .end local v3    # "nodes":[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->_getAudioCodecInfo()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "audioCodecInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 680
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 681
    .restart local v3    # "nodes":[Ljava/lang/String;
    array-length v5, v3

    if-lt v5, v8, :cond_3

    .line 682
    aget-object v5, v3, v6

    iput-object v5, v2, Lcom/fimi/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 683
    aget-object v5, v3, v7

    iput-object v5, v2, Lcom/fimi/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    .line 691
    .end local v3    # "nodes":[Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/fimi/player/FimiMediaMeta;->parse(Landroid/os/Bundle;)Lcom/fimi/player/FimiMediaMeta;

    move-result-object v5

    iput-object v5, v2, Lcom/fimi/player/MediaInfo;->mMeta:Lcom/fimi/player/FimiMediaMeta;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_2
    return-object v2

    .line 672
    .end local v0    # "audioCodecInfo":Ljava/lang/String;
    .restart local v3    # "nodes":[Ljava/lang/String;
    :cond_2
    array-length v5, v3

    if-lt v5, v7, :cond_0

    .line 673
    aget-object v5, v3, v6

    iput-object v5, v2, Lcom/fimi/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 674
    const-string v5, ""

    iput-object v5, v2, Lcom/fimi/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    goto :goto_0

    .line 684
    .restart local v0    # "audioCodecInfo":Ljava/lang/String;
    :cond_3
    array-length v5, v3

    if-lt v5, v7, :cond_1

    .line 685
    aget-object v5, v3, v6

    iput-object v5, v2, Lcom/fimi/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 686
    const-string v5, ""

    iput-object v5, v2, Lcom/fimi/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    goto :goto_1

    .line 692
    .end local v3    # "nodes":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 693
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public getMediaMeta()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 706
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
    .line 1089
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/player/FimiMediaPlayer;->fm_avp_mergeAV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

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
    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/player/FimiMediaPlayer;->stayAwake(Z)V

    .line 527
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->_pause()V

    .line 528
    return-void
.end method

.method public playerRtmpStart(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str_url"    # Ljava/lang/String;
    .param p2, "audio_en"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/fimi/player/FimiMediaPlayer;->rtmpStart(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public playerRtmpStop(I)I
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Lcom/fimi/player/FimiMediaPlayer;->rtmpStop(I)I

    move-result v0

    return v0
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/fimi/player/FimiMediaPlayer;->_prepareAsync()V

    .line 459
    return-void
.end method

.method public recEmergencySave(Ljava/lang/String;I)I
    .locals 2
    .param p1, "rec_save_dir"    # Ljava/lang/String;
    .param p2, "file_num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 483
    const-string v0, "peter"

    const-string v1, "recEmergencySave;"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/fimi/player/FimiMediaPlayer;->_recEmergencySave(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public recStart(Ljava/lang/String;II)I
    .locals 2
    .param p1, "rec_dir"    # Ljava/lang/String;
    .param p2, "file_num"    # I
    .param p3, "rec_time"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 478
    const-string v0, "peter"

    const-string v1, "rec_start;"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/player/FimiMediaPlayer;->_recStart(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public recStop()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/fimi/player/FimiMediaPlayer;->_recStop()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/player/FimiMediaPlayer;->stayAwake(Z)V

    .line 636
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->updateSurfaceScreenOn()V

    .line 637
    invoke-virtual {p0}, Lcom/fimi/player/FimiMediaPlayer;->resetListeners()V

    .line 638
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->_release()V

    .line 639
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 645
    invoke-direct {p0, v2}, Lcom/fimi/player/FimiMediaPlayer;->stayAwake(Z)V

    .line 646
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->_reset()V

    .line 648
    iget-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mEventHandler:Lcom/fimi/player/FimiMediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/player/FimiMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 650
    iput v2, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoWidth:I

    .line 651
    iput v2, p0, Lcom/fimi/player/FimiMediaPlayer;->mVideoHeight:I

    .line 652
    return-void
.end method

.method public resetListeners()V
    .locals 1

    .prologue
    .line 984
    invoke-super {p0}, Lcom/fimi/player/AbstractMediaPlayer;->resetListeners()V

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mOnMediaCodecSelectListener:Lcom/fimi/player/FimiMediaPlayer$OnMediaCodecSelectListener;

    .line 986
    return-void
.end method

.method public native rtmpStart(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native rtmpStop(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
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
    .line 753
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

    invoke-virtual {p0, p1, p2, v0}, Lcom/fimi/player/FimiMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

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
    if-nez p2, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, "scheme":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/player/FimiMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_2
    const-string v0, "content"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "settings"

    .line 310
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 312
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 314
    if-nez p2, :cond_3

    .line 315
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to resolve default ringtone"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_3
    const/4 v6, 0x0

    .line 321
    .local v6, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 322
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string v0, "r"

    invoke-virtual {v7, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 323
    if-nez v6, :cond_4

    .line 338
    if-eqz v6, :cond_0

    .line 339
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 329
    :cond_4
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 330
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/player/FimiMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :goto_1
    if-eqz v6, :cond_0

    .line 339
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 332
    :cond_5
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fimi/player/FimiMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 335
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 338
    if-eqz v6, :cond_6

    .line 339
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 343
    :cond_6
    :goto_2
    sget-object v0, Lcom/fimi/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/fimi/player/FimiMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 336
    :catch_1
    move-exception v0

    .line 338
    if-eqz v6, :cond_6

    .line 339
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2

    .line 338
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 339
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 341
    :cond_7
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
    .line 407
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-ge v4, v5, :cond_0

    .line 408
    const/4 v2, -0x1

    .line 410
    .local v2, "native_fd":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "descriptor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 411
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 412
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 418
    invoke-direct {p0, v2}, Lcom/fimi/player/FimiMediaPlayer;->_setDataSourceFd(I)V

    .line 427
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "native_fd":I
    :goto_0
    return-void

    .line 413
    .restart local v2    # "native_fd":I
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 415
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 420
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "native_fd":I
    :cond_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 422
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/fimi/player/FimiMediaPlayer;->_setDataSourceFd(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 425
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

    .line 368
    iput-object p1, p0, Lcom/fimi/player/FimiMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 369
    invoke-direct {p0, p1, v0, v0}, Lcom/fimi/player/FimiMediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 370
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
    .line 382
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
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

    .line 385
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 388
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_0
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 393
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fimi/player/FimiMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public setDeviceInfo(II)I
    .locals 1
    .param p1, "device_type"    # I
    .param p2, "buffer_count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0, p1, p2}, Lcom/fimi/player/FimiMediaPlayer;->_setDeviceInfo(II)I

    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/fimi/player/FimiMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 236
    if-eqz p1, :cond_0

    .line 237
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 241
    .local v0, "surface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Lcom/fimi/player/FimiMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 242
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->updateSurfaceScreenOn()V

    .line 243
    return-void

    .line 239
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
    .line 758
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 701
    return-void
.end method

.method public setOnControlMessageListener(Lcom/fimi/player/FimiMediaPlayer$OnControlMessageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/FimiMediaPlayer$OnControlMessageListener;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/fimi/player/FimiMediaPlayer;->mOnControlMessageListener:Lcom/fimi/player/FimiMediaPlayer$OnControlMessageListener;

    .line 913
    return-void
.end method

.method public setOnMediaCodecSelectListener(Lcom/fimi/player/FimiMediaPlayer$OnMediaCodecSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/FimiMediaPlayer$OnMediaCodecSelectListener;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/fimi/player/FimiMediaPlayer;->mOnMediaCodecSelectListener:Lcom/fimi/player/FimiMediaPlayer$OnMediaCodecSelectListener;

    .line 981
    return-void
.end method

.method public setOnNativeInvokeListener(Lcom/fimi/player/FimiMediaPlayer$OnNativeInvokeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/player/FimiMediaPlayer$OnNativeInvokeListener;

    .prologue
    .line 944
    iput-object p1, p0, Lcom/fimi/player/FimiMediaPlayer;->mOnNativeInvokeListener:Lcom/fimi/player/FimiMediaPlayer$OnNativeInvokeListener;

    .line 945
    return-void
.end method

.method public setOption(ILjava/lang/String;J)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 733
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fimi/player/FimiMediaPlayer;->_setOption(ILjava/lang/String;J)V

    .line 734
    return-void
.end method

.method public setOption(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 728
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/player/FimiMediaPlayer;->_setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public setPreview(I)V
    .locals 0
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/fimi/player/FimiMediaPlayer;->_setPreview(I)V

    .line 473
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 557
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 558
    sget-object v0, Lcom/fimi/player/FimiMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Lcom/fimi/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    iput-boolean p1, p0, Lcom/fimi/player/FimiMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 562
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->updateSurfaceScreenOn()V

    .line 564
    :cond_1
    return-void
.end method

.method public setServiceListener(Lcom/fimi/player/FimiMediaPlayer$RtspServiceListener;)V
    .locals 0
    .param p1, "serviceListener"    # Lcom/fimi/player/FimiMediaPlayer$RtspServiceListener;

    .prologue
    .line 1109
    sput-object p1, Lcom/fimi/player/FimiMediaPlayer;->serviceListener:Lcom/fimi/player/FimiMediaPlayer$RtspServiceListener;

    .line 1110
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 268
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/player/FimiMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 269
    invoke-direct {p0, p1}, Lcom/fimi/player/FimiMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 270
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->updateSurfaceScreenOn()V

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
    .line 535
    const/4 v1, 0x0

    .line 536
    .local v1, "washeld":Z
    iget-object v2, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 537
    iget-object v2, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    const/4 v1, 0x1

    .line 539
    iget-object v2, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 541
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 544
    :cond_1
    const-string v2, "power"

    .line 545
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 546
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-class v3, Lcom/fimi/player/FimiMediaPlayer;

    .line 547
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 546
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 548
    iget-object v2, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 549
    if-eqz v1, :cond_2

    .line 550
    iget-object v2, p0, Lcom/fimi/player/FimiMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 552
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
    .line 1081
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fimi/player/FimiMediaPlayer;->fm_avp_splitVid(Ljava/lang/String;Ljava/lang/String;II)I

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
    .line 509
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/player/FimiMediaPlayer;->stayAwake(Z)V

    .line 510
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->_start()V

    .line 511
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
    .line 518
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/player/FimiMediaPlayer;->stayAwake(Z)V

    .line 519
    invoke-direct {p0}, Lcom/fimi/player/FimiMediaPlayer;->_stop()V

    .line 520
    return-void
.end method

.method public vid2imgArray(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "inputUrl"    # Ljava/lang/String;
    .param p2, "outUrl"    # Ljava/lang/String;

    .prologue
    .line 1077
    invoke-virtual {p0, p1, p2}, Lcom/fimi/player/FimiMediaPlayer;->fm_avp_vid2img(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public videoToJpg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "remoteUrl"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 717
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 720
    :cond_0
    :goto_0
    return v1

    .line 719
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/fimi/player/FimiMediaPlayer;->_stream2jpg(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 720
    .local v0, "iRet":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
