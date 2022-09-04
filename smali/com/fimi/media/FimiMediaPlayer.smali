.class public Lcom/fimi/media/FimiMediaPlayer;
.super Ljava/lang/Object;
.source "FimiMediaPlayer.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static object:Ljava/lang/Object;

.field static r1:I

.field static time:J

.field static w1:I

.field private static x8VideoFrameBufferListener:Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fimi/media/FimiMediaPlayer;->object:Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/fimi/media/FimiMediaPlayer$1;

    invoke-direct {v0}, Lcom/fimi/media/FimiMediaPlayer$1;-><init>()V

    sput-object v0, Lcom/fimi/media/FimiMediaPlayer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "ijkffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    const-string v0, "h264decode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/fimi/media/FimiMediaPlayer;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/fimi/media/FimiMediaPlayer;->x8VideoFrameBufferListener:Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    return-object v0
.end method

.method public static getJavaCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onFrameBuffer([BI)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 98
    if-eqz p0, :cond_0

    .line 99
    if-ne p1, v2, :cond_1

    .line 100
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 101
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 102
    sget-object v1, Lcom/fimi/media/FimiMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 107
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    if-nez p1, :cond_0

    .line 104
    sget-object v1, Lcom/fimi/media/FimiMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static showLog(III)V
    .locals 0
    .param p0, "w"    # I
    .param p1, "r"    # I
    .param p2, "m"    # I

    .prologue
    .line 87
    return-void
.end method


# virtual methods
.method public native addBufferData([BII)V
.end method

.method public native deInitDecode()V
.end method

.method public native decodeBuffer([BI)I
.end method

.method public native displayVersion()V
.end method

.method public native enableLog(I)V
.end method

.method public native getFpsIndex()I
.end method

.method public native getH264FrameLostSeq()I
.end method

.method public native getRemainder()I
.end method

.method public native initDecoder(III)I
.end method

.method public native setEnableCallback(I)V
.end method

.method public native setMediaDecType(I)V
.end method

.method public native setSurfaceView(Ljava/lang/Object;)V
.end method

.method public native setTddMode(I)V
.end method

.method public declared-synchronized setX8VideoFrameBufferListener(Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/fimi/media/FimiMediaPlayer;->object:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    sput-object p1, Lcom/fimi/media/FimiMediaPlayer;->x8VideoFrameBufferListener:Lcom/fimi/app/x8s/media/OnX8VideoFrameBufferListener;

    .line 137
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native start()I
.end method

.method public native stop()V
.end method
