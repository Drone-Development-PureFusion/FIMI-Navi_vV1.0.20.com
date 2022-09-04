.class public Lcom/fimi/app/x8s/media/H264Player;
.super Ljava/lang/Object;
.source "H264Player.java"


# static fields
.field private static final FPS:I = 0x3c

.field private static final VIDEO_HEIGHT:I = 0x2d0

.field private static final VIDEO_WIDTH:I = 0x500


# instance fields
.field private count:I

.field private currentStartIndex:I

.field private mDecodeThread:Ljava/lang/Thread;

.field private mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

.field private mH264StreamParseThread:Lcom/fimi/app/x8s/media/H264StreamParseThread;

.field mHandler:Landroid/os/Handler;

.field private mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

.field private mStopFlag:Z


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/media/IFrameDataListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/fimi/app/x8s/media/IFrameDataListener;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/fimi/app/x8s/media/H264Player$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/media/H264Player$2;-><init>(Lcom/fimi/app/x8s/media/H264Player;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mHandler:Landroid/os/Handler;

    .line 24
    iput-object p1, p0, Lcom/fimi/app/x8s/media/H264Player;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    .line 26
    new-instance v0, Lcom/fimi/media/FimiMediaPlayer;

    invoke-direct {v0}, Lcom/fimi/media/FimiMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    .line 27
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/media/FimiMediaPlayer;->enableLog(I)V

    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v0}, Lcom/fimi/media/FimiMediaPlayer;->displayVersion()V

    .line 29
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/media/FimiMediaPlayer;->initDecoder(III)I

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/media/H264Player;)Lcom/fimi/media/FimiMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/media/H264Player;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public addBufferData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mH264StreamParseThread:Lcom/fimi/app/x8s/media/H264StreamParseThread;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mH264StreamParseThread:Lcom/fimi/app/x8s/media/H264StreamParseThread;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/H264StreamParseThread;->notityParse([B)V

    .line 74
    :cond_0
    return-void
.end method

.method public countFps()V
    .locals 5

    .prologue
    .line 93
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264Player;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v2}, Lcom/fimi/media/FimiMediaPlayer;->getFpsIndex()I

    move-result v0

    .line 95
    .local v0, "c":I
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v2}, Lcom/fimi/media/FimiMediaPlayer;->getRemainder()I

    move-result v1

    .line 96
    .local v1, "r":I
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264Player;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    iget v3, p0, Lcom/fimi/app/x8s/media/H264Player;->count:I

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/fimi/app/x8s/media/H264Player;->mH264StreamParseThread:Lcom/fimi/app/x8s/media/H264StreamParseThread;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/media/H264StreamParseThread;->getFpvSize()I

    move-result v4

    invoke-interface {v2, v3, v1, v4}, Lcom/fimi/app/x8s/media/IFrameDataListener;->onCountFrame(III)V

    .line 97
    iput v0, p0, Lcom/fimi/app/x8s/media/H264Player;->count:I

    .line 99
    .end local v0    # "c":I
    .end local v1    # "r":I
    :cond_0
    return-void
.end method

.method public deInitDecode()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v0}, Lcom/fimi/media/FimiMediaPlayer;->deInitDecode()V

    .line 42
    return-void
.end method

.method public decodeBuffer([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/media/FimiMediaPlayer;->decodeBuffer([BI)I

    .line 38
    return-void
.end method

.method public getLostSeq()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v0}, Lcom/fimi/media/FimiMediaPlayer;->getH264FrameLostSeq()I

    move-result v0

    return v0
.end method

.method public setEnableCallback(I)V
    .locals 1
    .param p1, "enbale"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/fimi/media/FimiMediaPlayer;->setEnableCallback(I)V

    .line 107
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/fimi/media/FimiMediaPlayer;->setSurfaceView(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public setX8VideoFrameBufferListener(Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;)V
    .locals 1
    .param p1, "x8VideoFrameBufferListener"    # Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/fimi/media/FimiMediaPlayer;->setX8VideoFrameBufferListener(Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;)V

    .line 103
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/fimi/media/FimiMediaPlayer;->setMediaDecType(I)V

    .line 46
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/media/FimiMediaPlayer;->setTddMode(I)V

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v0}, Lcom/fimi/media/FimiMediaPlayer;->start()I

    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v0}, Lcom/fimi/media/FimiMediaPlayer;->getFpsIndex()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/media/H264Player;->count:I

    .line 50
    new-instance v0, Lcom/fimi/app/x8s/media/H264StreamParseThread;

    new-instance v1, Lcom/fimi/app/x8s/media/H264Player$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/media/H264Player$1;-><init>(Lcom/fimi/app/x8s/media/H264Player;)V

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/media/H264StreamParseThread;-><init>(Lcom/fimi/app/x8s/media/IH264DataListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mH264StreamParseThread:Lcom/fimi/app/x8s/media/H264StreamParseThread;

    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mH264StreamParseThread:Lcom/fimi/app/x8s/media/H264StreamParseThread;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/H264StreamParseThread;->start()V

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mFimiMediaPlayer:Lcom/fimi/media/FimiMediaPlayer;

    invoke-virtual {v0}, Lcom/fimi/media/FimiMediaPlayer;->stop()V

    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mH264StreamParseThread:Lcom/fimi/app/x8s/media/H264StreamParseThread;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player;->mH264StreamParseThread:Lcom/fimi/app/x8s/media/H264StreamParseThread;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/media/H264StreamParseThread;->release()V

    .line 67
    :cond_0
    return-void
.end method
