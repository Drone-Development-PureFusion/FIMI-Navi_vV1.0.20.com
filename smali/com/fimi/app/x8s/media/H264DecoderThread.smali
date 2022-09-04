.class public Lcom/fimi/app/x8s/media/H264DecoderThread;
.super Ljava/lang/Thread;
.source "H264DecoderThread.java"

# interfaces
.implements Lcom/fimi/app/x8s/media/IH264DataListener;


# instance fields
.field public cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<[B>;"
        }
    .end annotation
.end field

.field private count:I

.field private isCount:Z

.field private isWait:Z

.field lastSeq:I

.field mDecoder:Lcom/fimi/app/x8s/media/H264Decoder;

.field mH264Frame:Lcom/fimi/app/x8s/media/H264Frame;

.field private mH264Player:Lcom/fimi/app/x8s/media/H264Player;

.field private mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

.field private mPacket:Lcom/fimi/app/x8s/media/H264Packet;

.field private mStopFlag:Z

.field seq:I

.field startIndex:I

.field private time:J

.field timeoutUs:J


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/media/H264Decoder;Lcom/fimi/app/x8s/media/IFrameDataListener;)V
    .locals 3
    .param p1, "h264Decoder"    # Lcom/fimi/app/x8s/media/H264Decoder;
    .param p2, "mIFrameDataListener"    # Lcom/fimi/app/x8s/media/IFrameDataListener;

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    iput-boolean v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mStopFlag:Z

    .line 32
    iput-boolean v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->isWait:Z

    .line 33
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 36
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->timeoutUs:J

    .line 37
    iput v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->startIndex:I

    .line 109
    new-instance v0, Lcom/fimi/app/x8s/media/H264Frame;

    invoke-direct {v0}, Lcom/fimi/app/x8s/media/H264Frame;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Frame:Lcom/fimi/app/x8s/media/H264Frame;

    .line 113
    new-instance v0, Lcom/fimi/app/x8s/media/H264Packet;

    new-instance v1, Lcom/fimi/app/x8s/media/H264DecoderThread$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/media/H264DecoderThread$1;-><init>(Lcom/fimi/app/x8s/media/H264DecoderThread;)V

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/media/H264Packet;-><init>(Lcom/fimi/app/x8s/media/IH264DataListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mPacket:Lcom/fimi/app/x8s/media/H264Packet;

    .line 174
    iput v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->seq:I

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->lastSeq:I

    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mDecoder:Lcom/fimi/app/x8s/media/H264Decoder;

    .line 41
    iput-object p2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    .line 42
    sget-boolean v0, Lcom/fimi/app/x8s/X8Application;->isLocalVideo:Z

    if-nez v0, :cond_0

    .line 43
    const/16 v0, 0xe

    iput v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->startIndex:I

    .line 45
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/fimi/app/x8s/media/H264Player;Lcom/fimi/app/x8s/media/IFrameDataListener;)V
    .locals 3
    .param p1, "mH264Player"    # Lcom/fimi/app/x8s/media/H264Player;
    .param p2, "mIFrameDataListener"    # Lcom/fimi/app/x8s/media/IFrameDataListener;

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    iput-boolean v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mStopFlag:Z

    .line 32
    iput-boolean v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->isWait:Z

    .line 33
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 36
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->timeoutUs:J

    .line 37
    iput v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->startIndex:I

    .line 109
    new-instance v0, Lcom/fimi/app/x8s/media/H264Frame;

    invoke-direct {v0}, Lcom/fimi/app/x8s/media/H264Frame;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Frame:Lcom/fimi/app/x8s/media/H264Frame;

    .line 113
    new-instance v0, Lcom/fimi/app/x8s/media/H264Packet;

    new-instance v1, Lcom/fimi/app/x8s/media/H264DecoderThread$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/media/H264DecoderThread$1;-><init>(Lcom/fimi/app/x8s/media/H264DecoderThread;)V

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/media/H264Packet;-><init>(Lcom/fimi/app/x8s/media/IH264DataListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mPacket:Lcom/fimi/app/x8s/media/H264Packet;

    .line 174
    iput v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->seq:I

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->lastSeq:I

    .line 48
    iput-object p1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    .line 49
    iput-object p2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    .line 50
    sget-boolean v0, Lcom/fimi/app/x8s/X8Application;->isLocalVideo:Z

    if-nez v0, :cond_0

    .line 51
    const/16 v0, 0xe

    iput v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->startIndex:I

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/media/H264DecoderThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/media/H264DecoderThread;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->isCount:Z

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/media/H264DecoderThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/media/H264DecoderThread;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->isCount:Z

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/media/H264DecoderThread;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/media/H264DecoderThread;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->time:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/fimi/app/x8s/media/H264DecoderThread;J)J
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/media/H264DecoderThread;
    .param p1, "x1"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->time:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/media/H264DecoderThread;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/media/H264DecoderThread;

    .prologue
    .line 27
    iget v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->count:I

    return v0
.end method

.method static synthetic access$202(Lcom/fimi/app/x8s/media/H264DecoderThread;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/media/H264DecoderThread;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->count:I

    return p1
.end method

.method static synthetic access$208(Lcom/fimi/app/x8s/media/H264DecoderThread;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/media/H264DecoderThread;

    .prologue
    .line 27
    iget v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->count:I

    return v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/media/H264DecoderThread;)Lcom/fimi/app/x8s/media/IFrameDataListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/media/H264DecoderThread;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    return-object v0
.end method

.method private notityDecode1([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 149
    iget v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->startIndex:I

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 150
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Frame:Lcom/fimi/app/x8s/media/H264Frame;

    aget-byte v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/media/H264Frame;->parse(B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    iget-boolean v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->isCount:Z

    if-nez v2, :cond_2

    .line 152
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->isCount:Z

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->time:J

    .line 154
    iget v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->count:I

    .line 166
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Frame:Lcom/fimi/app/x8s/media/H264Frame;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/media/H264Frame;->getDataBuf()[B

    move-result-object v0

    .line 167
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 149
    .end local v0    # "bytes":[B
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    iget v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->count:I

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 158
    iput-boolean v6, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->isCount:Z

    .line 159
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    if-eqz v2, :cond_3

    .line 160
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mIFrameDataListener:Lcom/fimi/app/x8s/media/IFrameDataListener;

    iget v3, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->count:I

    invoke-interface {v2, v3, v6, v6}, Lcom/fimi/app/x8s/media/IFrameDataListener;->onCountFrame(III)V

    .line 162
    :cond_3
    iput v6, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->count:I

    goto :goto_1

    .line 172
    :cond_4
    return-void
.end method

.method private notityDecode12([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mPacket:Lcom/fimi/app/x8s/media/H264Packet;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/media/H264Packet;->onPacket([B)V

    .line 146
    return-void
.end method


# virtual methods
.method public androidDecode()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public decode([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public ffmpegDecode()V
    .locals 3

    .prologue
    .line 99
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mStopFlag:Z

    if-nez v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 102
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/fimi/app/x8s/media/H264Player;->decodeBuffer([BI)V

    goto :goto_0

    .line 107
    .end local v0    # "data":[B
    :cond_1
    return-void
.end method

.method public notityDecode([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 137
    sget-boolean v0, Lcom/fimi/app/x8s/X8Application;->Type2:Z

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/media/H264DecoderThread;->notityDecode1([B)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/media/H264DecoderThread;->notityDecode12([B)V

    goto :goto_0
.end method

.method public onH264Frame([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/media/H264DecoderThread;->decode([B)V

    .line 262
    return-void
.end method

.method public packetData([B)V
    .locals 8
    .param p1, "data"    # [B

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xc

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/16 v3, 0xe

    .line 178
    array-length v1, p1

    if-le v1, v3, :cond_0

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 179
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->seq:I

    .line 180
    iget v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->lastSeq:I

    if-ne v1, v5, :cond_1

    .line 181
    aget-byte v1, p1, v6

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_0

    .line 182
    aget-byte v1, p1, v3

    if-nez v1, :cond_0

    aget-byte v1, p1, v7

    if-nez v1, :cond_0

    const/16 v1, 0x10

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    const/16 v1, 0x11

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_0

    .line 183
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Frame:Lcom/fimi/app/x8s/media/H264Frame;

    array-length v2, p1

    add-int/lit8 v2, v2, -0xe

    invoke-virtual {v1, p1, v3, v2}, Lcom/fimi/app/x8s/media/H264Frame;->setData([BII)V

    .line 184
    iget v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->seq:I

    iput v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->lastSeq:I

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->seq:I

    iget v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->lastSeq:I

    sub-int/2addr v1, v2

    if-le v1, v4, :cond_2

    .line 190
    iget v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->seq:I

    iput v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->lastSeq:I

    .line 191
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Frame:Lcom/fimi/app/x8s/media/H264Frame;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/media/H264Frame;->resetIndex()V

    goto :goto_0

    .line 194
    :cond_2
    aget-byte v1, p1, v6

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_4

    .line 195
    aget-byte v1, p1, v3

    if-nez v1, :cond_0

    aget-byte v1, p1, v7

    if-nez v1, :cond_0

    const/16 v1, 0x10

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    const/16 v1, 0x11

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_0

    .line 196
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Frame:Lcom/fimi/app/x8s/media/H264Frame;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/media/H264Frame;->getDataBuf()[B

    move-result-object v0

    .line 197
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Frame:Lcom/fimi/app/x8s/media/H264Frame;

    array-length v2, p1

    add-int/lit8 v2, v2, -0xe

    invoke-virtual {v1, p1, v3, v2}, Lcom/fimi/app/x8s/media/H264Frame;->setData([BII)V

    .line 199
    iget v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->seq:I

    const/16 v2, 0x7fff

    if-ne v1, v2, :cond_3

    .line 200
    iput v5, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->lastSeq:I

    goto :goto_0

    .line 202
    :cond_3
    iget v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->seq:I

    iput v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->lastSeq:I

    goto :goto_0

    .line 206
    .end local v0    # "bytes":[B
    :cond_4
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Frame:Lcom/fimi/app/x8s/media/H264Frame;

    array-length v2, p1

    add-int/lit8 v2, v2, -0xe

    invoke-virtual {v1, p1, v3, v2}, Lcom/fimi/app/x8s/media/H264Frame;->setData([BII)V

    .line 207
    iget v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->seq:I

    iput v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->lastSeq:I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mStopFlag:Z

    .line 256
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/H264DecoderThread;->interrupt()V

    .line 257
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mDecoder:Lcom/fimi/app/x8s/media/H264Decoder;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/H264DecoderThread;->androidDecode()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->mH264Player:Lcom/fimi/app/x8s/media/H264Player;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/H264DecoderThread;->ffmpegDecode()V

    .line 63
    :cond_1
    return-void
.end method

.method public sendSignal()V
    .locals 5

    .prologue
    .line 221
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v2

    .line 223
    :try_start_0
    iget-boolean v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->isWait:Z

    if-eqz v1, :cond_2

    .line 224
    const-string v1, "istep"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSignal notify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_1

    .line 226
    const-string/jumbo v1, "zdy"

    const-string v3, "sendSignal notify"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->isWait:Z

    .line 228
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 249
    :cond_0
    :goto_0
    monitor-exit v2

    .line 250
    return-void

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 231
    :try_start_1
    const-string/jumbo v1, "zdy"

    const-string v3, "sendSignal wait"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 239
    :cond_2
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->isWait:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    :try_start_4
    const-string/jumbo v1, "zdy"

    const-string v3, "sendSignal wait"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 245
    :catch_1
    move-exception v0

    .line 246
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
